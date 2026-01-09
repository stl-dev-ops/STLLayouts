using System.Reflection;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.Services;

public class VariableMappingService(
    IVariableMappingRepository repository,
    IJobService jobService,
    ICollectionDataService collectionDataService,
    ILogger<VariableMappingService> logger) : IVariableMappingService
{
    private readonly IVariableMappingRepository _repository = repository ?? throw new ArgumentNullException(nameof(repository));
    private readonly IJobService _jobService = jobService ?? throw new ArgumentNullException(nameof(jobService));
    private readonly ICollectionDataService _collectionDataService = collectionDataService ?? throw new ArgumentNullException(nameof(collectionDataService));
    private readonly ILogger<VariableMappingService> _logger = logger ?? throw new ArgumentNullException(nameof(logger));

    public async Task<List<VariableMapping>> GetAllMappingsAsync()
    {
        _logger.LogInformation("Retrieving all variable mappings");
        return await _repository.GetAllAsync();
    }

    public async Task<List<VariableMapping>> GetMappingsByCategoryAsync(string category)
    {
        if (string.IsNullOrWhiteSpace(category))
        {
            _logger.LogWarning("GetMappingsByCategoryAsync called with null/empty category");
            throw new ArgumentException("Category cannot be null or empty", nameof(category));
        }

        _logger.LogInformation("Retrieving variable mappings for category: {Category}", category);
        return await _repository.GetMappingsByCategoryAsync(category);
    }

    public async Task<VariableMapping?> GetByVariableNameAsync(string variableName)
    {
        if (string.IsNullOrWhiteSpace(variableName))
        {
            _logger.LogWarning("GetByVariableNameAsync called with null/empty variable name");
            throw new ArgumentException("Variable name cannot be null or empty", nameof(variableName));
        }

        _logger.LogInformation("Retrieving mapping for variable: {VariableName}", variableName);
        return await _repository.GetByVariableNameAsync(variableName);
    }

    public async Task<VariableMapping> CreateMappingAsync(VariableMapping mapping)
    {
        if (mapping == null)
        {
            _logger.LogError("CreateMappingAsync called with null mapping");
            throw new ArgumentNullException(nameof(mapping));
        }

        if (string.IsNullOrWhiteSpace(mapping.VariableName))
        {
            _logger.LogWarning("CreateMappingAsync called with empty variable name");
            throw new ArgumentException("Variable name cannot be null or empty", nameof(mapping));
        }

        if (mapping.MappingKind == MappingKind.List)
        {
            if (string.IsNullOrWhiteSpace(mapping.CollectionName) || string.IsNullOrWhiteSpace(mapping.FieldKey))
            {
                _logger.LogWarning("CreateMappingAsync: list mappings require CollectionName and FieldKey");
                throw new ArgumentException("List mappings require CollectionName and FieldKey", nameof(mapping));
            }
        }
        else
        {
            if (string.IsNullOrWhiteSpace(mapping.DatabaseField) && string.IsNullOrWhiteSpace(mapping.SqlExpression))
            {
                _logger.LogWarning("CreateMappingAsync: either DatabaseField or SqlExpression must be specified");
                throw new ArgumentException("Either DatabaseField or SqlExpression must be specified", nameof(mapping));
            }
        }

        mapping.VariableMappingId = Guid.NewGuid();
        mapping.CreatedDate = DateTime.UtcNow;

        _logger.LogInformation("Creating new variable mapping: {VariableName}", mapping.VariableName);

        return await _repository.AddAsync(mapping);
    }

    public async Task UpdateMappingAsync(VariableMapping mapping)
    {
        if (mapping == null)
        {
            _logger.LogError("UpdateMappingAsync called with null mapping");
            throw new ArgumentNullException(nameof(mapping));
        }

        if (string.IsNullOrWhiteSpace(mapping.VariableName))
        {
            _logger.LogWarning("UpdateMappingAsync called with empty variable name");
            throw new ArgumentException("Variable name cannot be null or empty", nameof(mapping));
        }

        if (mapping.MappingKind == MappingKind.List)
        {
            if (string.IsNullOrWhiteSpace(mapping.CollectionName) || string.IsNullOrWhiteSpace(mapping.FieldKey))
            {
                _logger.LogWarning("UpdateMappingAsync: list mappings require CollectionName and FieldKey");
                throw new ArgumentException("List mappings require CollectionName and FieldKey", nameof(mapping));
            }

            // keep scalar-only fields empty for list mappings (optional but reduces confusion)
            mapping.DatabaseField = null;
            mapping.SqlExpression = null;
        }

        _logger.LogInformation("Updating variable mapping: {VariableName}", mapping.VariableName);
        await _repository.UpdateAsync(mapping);
    }

    public Task DeleteMappingAsync(int mappingId)
    {
        // This interface method is legacy (int) but VariableMapping uses Guid IDs.
        // Preserve behavior by ignoring invalid int IDs and logging a warning.
        if (mappingId <= 0)
        {
            _logger.LogWarning("DeleteMappingAsync(int) called with invalid mappingId: {MappingId}. VariableMapping uses Guid IDs.", mappingId);
            return Task.CompletedTask;
        }

        _logger.LogWarning("DeleteMappingAsync(int) called with mappingId: {MappingId}, but VariableMapping uses Guid IDs. No action taken.", mappingId);
        return Task.CompletedTask;
    }

    public Task DeleteMappingAsync(Guid mappingId)
    {
        if (mappingId == Guid.Empty)
        {
            _logger.LogWarning("DeleteMappingAsync(Guid) called with empty mappingId");
            return Task.CompletedTask;
        }

        _logger.LogInformation("Deleting variable mapping with ID: {MappingId}", mappingId);
        return _repository.DeleteAsync(mappingId);
    }

    public async Task<Dictionary<string, object>> ResolveVariablesAsync(Job job)
    {
        if (job == null)
        {
            _logger.LogWarning("ResolveVariablesAsync called with null job");
            return [];
        }

        Dictionary<string, object> variables = new(StringComparer.OrdinalIgnoreCase);

        // Load scalar job context into job.ExtendedProperties (existing behavior) and keep as variables.
        var context = await _jobService.GetJobContextAsync(job.ord__ref);
        foreach (var kvp in context)
        {
            variables[kvp.Key] = kvp.Value;
        }

        // Apply configured scalar mappings.
        var mappings = await _repository.GetAllAsync();
        foreach (var mapping in mappings)
        {
            if (mapping.MappingKind == MappingKind.List)
            {
                // collections are materialized below
                continue;
            }

            var value = await EvaluateMappingAsync(mapping, job);
            if (!IsMissing(value))
            {
                variables[mapping.VariableName] = value;
            }
            else if (!string.IsNullOrWhiteSpace(mapping.DefaultValue))
            {
                variables[mapping.VariableName] = ConvertValue(mapping.DefaultValue, mapping.DataType);
            }
            else if (mapping.IsRequired)
            {
                variables[mapping.VariableName] = string.Empty;
            }
        }

        // Materialize collections referenced by list-mappings.
        var collectionsToLoad = mappings
            .Where(m => m.MappingKind == MappingKind.List)
            .Select(m => m.CollectionName)
            .Where(n => !string.IsNullOrWhiteSpace(n))
            .Select(n => n!.Trim())
            .Distinct(StringComparer.OrdinalIgnoreCase)
            .ToList();

        foreach (var collectionName in collectionsToLoad)
        {
            try
            {
                _logger.LogInformation("Loading collection '{CollectionName}' for job {JobId}", collectionName, job.ord__ref);
                var rows = await _collectionDataService.GetCollectionAsync(job, collectionName);
                _logger.LogInformation("Loaded collection '{CollectionName}': {RowCount} row(s)", collectionName, rows.Count);

                if (rows.Count > 0)
                {
                    var sampleKeys = rows[0].Keys.Take(25).ToArray();
                    _logger.LogDebug("Collection '{CollectionName}' sample keys: {Keys}", collectionName, string.Join(", ", sampleKeys));
                }

                // For collection token replacement, we need row dictionaries whose keys match the template "fields"
                // (e.g., {{OrderLines.ItemCode}}). VariableMappings supply FieldKey (template field) and
                // DatabaseField/SqlExpression (source column). We project each raw row into a shaped row.
                var fieldMappings = mappings
                    .Where(m => m.MappingKind == MappingKind.List
                                && string.Equals(m.CollectionName, collectionName, StringComparison.OrdinalIgnoreCase)
                                && !string.IsNullOrWhiteSpace(m.FieldKey))
                    .ToList();

                if (fieldMappings.Count > 0)
                {
                    _logger.LogInformation(
                        "Collection '{CollectionName}' has {FieldMappingCount} field mapping(s): {Fields}",
                        collectionName,
                        fieldMappings.Count,
                        string.Join(", ", fieldMappings.Select(m => m.FieldKey).Distinct(StringComparer.OrdinalIgnoreCase)));
                }

                if (fieldMappings.Count == 0)
                {
                    variables[collectionName] = rows;
                    continue;
                }

                List<Dictionary<string, object?>> shaped = new(rows.Count);
                foreach (var row in rows)
                {
                    Dictionary<string, object?> item = new(StringComparer.OrdinalIgnoreCase);

                    // Always include the raw columns too (so direct column-name tokens can still work)
                    foreach (var kvp in row)
                    {
                        item[kvp.Key] = kvp.Value;
                    }

                    foreach (var fm in fieldMappings)
                    {
                        var sourceKey = !string.IsNullOrWhiteSpace(fm.DatabaseField)
                            ? StripDbPrefix(fm.DatabaseField)
                            : (!string.IsNullOrWhiteSpace(fm.SqlExpression) ? StripDbPrefix(fm.SqlExpression!) : string.Empty);

                        object? raw = null;
                        if (!string.IsNullOrWhiteSpace(sourceKey))
                        {
                            // case-insensitive by dictionary comparer already, but keep safe
                            row.TryGetValue(sourceKey, out raw);
                        }

                        if (IsMissing(raw))
                        {
                            if (!string.IsNullOrWhiteSpace(fm.DefaultValue))
                            {
                                item[fm.FieldKey!] = ConvertValue(fm.DefaultValue, fm.DataType);
                            }
                            else
                            {
                                item[fm.FieldKey!] = string.Empty;
                            }
                        }
                        else
                        {
                            item[fm.FieldKey!] = ConvertValue(raw, fm.DataType);
                        }
                    }

                    shaped.Add(item);
                }

                if (shaped.Count > 0)
                {
                    var shapedKeys = shaped[0].Keys.Take(25).ToArray();
                    _logger.LogDebug("Collection '{CollectionName}' shaped sample keys: {Keys}", collectionName, string.Join(", ", shapedKeys));
                }

                variables[collectionName] = shaped;
            }
            catch (Exception ex)
            {
                _logger.LogWarning(ex, "Failed to load collection '{CollectionName}' for job {JobId}", collectionName, job.ord__ref);
                variables[collectionName] = Array.Empty<Dictionary<string, object?>>();
            }
        }

        return variables;
    }

    public Task<object> EvaluateMappingAsync(VariableMapping mapping, Job job)
    {
        if (mapping == null)
        {
            _logger.LogError("EvaluateMappingAsync called with null mapping");
            throw new ArgumentNullException(nameof(mapping));
        }

        if (job == null)
        {
            _logger.LogError("EvaluateMappingAsync called with null job");
            throw new ArgumentNullException(nameof(job));
        }

        try
        {
            // For scalar mappings, prefer the preloaded job context (ExtendedProperties) because
            // most mappings reference DB aliases/columns (not CLR properties on Job).
            // Only use reflection for a small set of known CLR properties.
            object? value;

            // 1) From DB context (loaded into ExtendedProperties) using variable name
            if (job.ExtendedProperties.TryGetValue(mapping.VariableName, out var extByVarName) && !IsMissing(extByVarName))
            {
                return Task.FromResult<object>(ConvertValue(extByVarName, mapping.DataType));
            }

            // 2) From DatabaseField mapping name (supports schema.table.field -> field stripping)
            if (!string.IsNullOrWhiteSpace(mapping.DatabaseField))
            {
                var dbKey = mapping.DatabaseField.Trim();
                if (job.ExtendedProperties.TryGetValue(dbKey, out var extDbFieldValue) && !IsMissing(extDbFieldValue))
                {
                    return Task.FromResult<object>(ConvertValue(extDbFieldValue, mapping.DataType));
                }

                var stripped = StripDbPrefix(dbKey);
                if (!ReferenceEquals(stripped, dbKey)
                    && job.ExtendedProperties.TryGetValue(stripped, out var extStrippedValue)
                    && !IsMissing(extStrippedValue))
                {
                    return Task.FromResult<object>(ConvertValue(extStrippedValue, mapping.DataType));
                }
            }

            // 3) SQL expression: treat as a selectable alias name (column) when using the JobContext query.
            // If mapping.SqlExpression matches a column name returned by GetJobContextAsync, it will resolve here.
            if (!string.IsNullOrWhiteSpace(mapping.SqlExpression))
            {
                var exprKey = mapping.SqlExpression.Trim();
                if (job.ExtendedProperties.TryGetValue(exprKey, out var exprValue) && !IsMissing(exprValue))
                {
                    return Task.FromResult<object>(ConvertValue(exprValue, mapping.DataType));
                }

                var strippedExpr = StripDbPrefix(exprKey);
                if (!ReferenceEquals(strippedExpr, exprKey)
                    && job.ExtendedProperties.TryGetValue(strippedExpr, out var strippedExprValue)
                    && !IsMissing(strippedExprValue))
                {
                    return Task.FromResult<object>(ConvertValue(strippedExprValue, mapping.DataType));
                }

                _logger.LogWarning("SQL expression evaluation is not supported as ad-hoc SQL. Use a view/query that exposes the expression as a column.");
            }

            // 4) As a last resort, try CLR properties on Job (no DB prefixes / aliases)
            // This supports mappings like "CustomerName" or "JobNumber".
            if (!string.IsNullOrWhiteSpace(mapping.VariableName) && !mapping.VariableName.Contains('.', StringComparison.Ordinal))
            {
                value = GetJobPropertyValue(job, mapping.VariableName);
                if (!IsMissing(value))
                {
                    return Task.FromResult<object>(ConvertValue(value, mapping.DataType));
                }
            }

            // Return empty string so ResolveVariablesAsync can treat it as missing and apply DefaultValue.
            return Task.FromResult<object>(string.Empty);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error evaluating mapping {VariableName} for job {JobNumber}",
                mapping.VariableName, job.JobNumber);
            throw;
        }
    }

    private static bool IsMissing(object? value)
    {
        return value == null
            || value == DBNull.Value
            || (value is string s && string.IsNullOrWhiteSpace(s));
    }

    private static string StripDbPrefix(string propertyPath)
    {
        if (string.IsNullOrWhiteSpace(propertyPath))
            return propertyPath;

        if (!propertyPath.Contains('.'))
            return propertyPath;

        var parts = propertyPath.Split('.');
        return parts.Length >= 2 ? parts[^1] : propertyPath;
    }

    /// <summary>
    /// Gets a property value from a Job instance using reflection.
    /// Supports nested properties (e.g., "Address.City").
    /// Automatically strips database table prefixes (e.g., "dbo.order___.leverdat" -> "leverdat").
    /// </summary>
    private object? GetJobPropertyValue(Job job, string propertyPath)
    {
        if (string.IsNullOrWhiteSpace(propertyPath))
            return null;

        // Strip database table prefix if present (e.g., "dbo.order___.leverdat" -> "leverdat")
        // Format: schema.table.fieldname -> fieldname
        var cleanPath = propertyPath;
        if (propertyPath.Contains('.'))
        {
            var parts = propertyPath.Split('.');
            // If there are 3+ parts, assume it's schema.table.field, take the last part
            if (parts.Length >= 3)
            {
                cleanPath = parts[^1]; // Last element
            }
        }

        var pathParts = cleanPath.Split('.');
        object? currentValue = job;

        foreach (var part in pathParts)
        {
            if (currentValue == null)
                return null;

            var property = currentValue.GetType().GetProperty(part,
                BindingFlags.IgnoreCase | BindingFlags.Public | BindingFlags.Instance);

            if (property == null)
            {
                return null;
            }

            currentValue = property.GetValue(currentValue);
        }

        return currentValue;
    }

    /// <summary>
    /// Converts a value to the specified data type.
    /// </summary>
    private static object ConvertValue(object? value, string dataType)
    {
        if (value == null)
            return string.Empty;

        return dataType.ToLowerInvariant() switch
        {
            "int" or "integer" => Convert.ToInt32(value),
            "decimal" or "double" or "float" => Convert.ToDouble(value),
            "bool" or "boolean" => Convert.ToBoolean(value),
            "date" or "datetime" => Convert.ToDateTime(value),
            "string" or "text" => value.ToString() ?? string.Empty,
            _ => value.ToString() ?? string.Empty
        };
    }

    public async Task<List<VariableMappingValidationResult>> ValidateMappingsAsync(string jobId)
    {
        if (string.IsNullOrWhiteSpace(jobId))
        {
            throw new ArgumentException("JobId cannot be null or empty", nameof(jobId));
        }

        var mappings = await GetAllMappingsAsync();

        Dictionary<string, object> jobContext;
        try
        {
            jobContext = new Dictionary<string, object>(
                await _jobService.GetJobContextAsync(jobId),
                StringComparer.OrdinalIgnoreCase);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to load job context for mapping validation (JobId={JobId})", jobId);
            throw;
        }

        var results = new List<VariableMappingValidationResult>(mappings.Count);

        foreach (var mapping in mappings.OrderBy(m => m.VariableName))
        {
            if (string.IsNullOrWhiteSpace(mapping.DatabaseField))
            {
                // This routine is intentionally focused on DatabaseField presence.
                continue;
            }

            var expectedKey = StripDbPrefix(mapping.DatabaseField);

            // Prefer the stripped key because JobContext columns come back as aliases/column names.
            var found = jobContext.TryGetValue(expectedKey, out var value)
                        || jobContext.TryGetValue(mapping.DatabaseField, out value);

            var isNull = found && (value == null || value == DBNull.Value);
            var isEmptyString = found && value is string s && s.Length == 0;

            results.Add(new VariableMappingValidationResult
            {
                VariableName = mapping.VariableName,
                DatabaseField = mapping.DatabaseField,
                ExpectedContextKey = expectedKey,
                KeyFound = found,
                IsNull = isNull,
                IsEmptyString = isEmptyString,
                Value = found ? value : null
            });
        }

        return results;
    }
}
