using System.Reflection;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.Services;

public class VariableMappingService : IVariableMappingService
{
    private readonly IVariableMappingRepository _repository;
    private readonly ILogger<VariableMappingService> _logger;

    public VariableMappingService(IVariableMappingRepository repository, ILogger<VariableMappingService> logger)
    {
        _repository = repository ?? throw new ArgumentNullException(nameof(repository));
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));
    }

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
            throw new ArgumentException("Variable name cannot be null or empty", nameof(mapping.VariableName));
        }

        if (string.IsNullOrWhiteSpace(mapping.DatabaseField) && string.IsNullOrWhiteSpace(mapping.SqlExpression))
        {
            _logger.LogWarning("CreateMappingAsync: either DatabaseField or SqlExpression must be specified");
            throw new ArgumentException("Either DatabaseField or SqlExpression must be specified", nameof(mapping));
        }

        mapping.VariableMappingId = Guid.NewGuid();
        mapping.CreatedDate = DateTime.UtcNow;

        _logger.LogInformation("Creating new variable mapping: {VariableName} -> {DatabaseField}", 
            mapping.VariableName, mapping.DatabaseField ?? mapping.SqlExpression);

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
            throw new ArgumentException("Variable name cannot be null or empty", nameof(mapping.VariableName));
        }

        _logger.LogInformation("Updating variable mapping: {VariableName}", mapping.VariableName);
        await _repository.UpdateAsync(mapping);
    }

    public Task DeleteMappingAsync(int mappingId)
    {
        if (mappingId <= 0)
        {
            _logger.LogWarning("DeleteMappingAsync called with invalid mappingId: {MappingId}", mappingId);
            throw new ArgumentException("Mapping ID must be greater than 0", nameof(mappingId));
        }

        _logger.LogInformation("Deleting variable mapping with ID: {MappingId}", mappingId);
        return _repository.DeleteAsync(Guid.Empty);
    }

    public async Task<Dictionary<string, object>> ResolveVariablesAsync(Job job)
    {
        if (job == null)
        {
            _logger.LogError("ResolveVariablesAsync called with null job");
            throw new ArgumentNullException(nameof(job));
        }

        _logger.LogInformation("Resolving variables for job: {JobNumber}", job.JobNumber);

        var mappings = await GetAllMappingsAsync();
        var resolvedVariables = new Dictionary<string, object>();

        foreach (var mapping in mappings)
        {
            try
            {
                var value = await EvaluateMappingAsync(mapping, job);
                resolvedVariables[mapping.VariableName] = value ?? mapping.DefaultValue ?? string.Empty;
            }
            catch (Exception ex)
            {
                _logger.LogWarning(ex, "Failed to resolve variable {VariableName} for job {JobNumber}", 
                    mapping.VariableName, job.JobNumber);

                if (mapping.IsRequired)
                {
                    throw new InvalidOperationException(
                        $"Failed to resolve required variable '{mapping.VariableName}'", ex);
                }

                resolvedVariables[mapping.VariableName] = mapping.DefaultValue ?? string.Empty;
            }
        }

        _logger.LogInformation("Resolved {VariableCount} variables for job: {JobNumber}", 
            resolvedVariables.Count, job.JobNumber);

        return resolvedVariables;
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
            // First, try to resolve from Job properties using the variable name directly
            var value = GetJobPropertyValue(job, mapping.VariableName);
            if (value != null)
            {
                _logger.LogDebug("Variable '{VariableName}' resolved directly from Job property: {Value}", mapping.VariableName, value);
                return Task.FromResult<object>(ConvertValue(value, mapping.DataType));
            }

            // Then, try using the database field name (with prefix stripping)
            if (!string.IsNullOrWhiteSpace(mapping.DatabaseField))
            {
                value = GetJobPropertyValue(job, mapping.DatabaseField);
                if (value != null)
                {
                    _logger.LogDebug("Variable '{VariableName}' resolved from database field '{DatabaseField}': {Value}", 
                        mapping.VariableName, mapping.DatabaseField, value);
                    return Task.FromResult<object>(ConvertValue(value, mapping.DataType));
                }
            }

            // Then try extended properties
            if (job.ExtendedProperties.TryGetValue(mapping.VariableName, out var extValue))
            {
                _logger.LogDebug("Variable '{VariableName}' resolved from extended properties: {Value}", mapping.VariableName, extValue);
                return Task.FromResult<object>(ConvertValue(extValue, mapping.DataType));
            }

            // Finally, try SQL expression evaluation (if available)
            if (!string.IsNullOrWhiteSpace(mapping.SqlExpression))
            {
                _logger.LogWarning("SQL expression evaluation not yet implemented for mapping: {VariableName}", 
                    mapping.VariableName);
                // TODO: Implement SQL expression evaluation
            }

            // Return default value
            return Task.FromResult<object>(mapping.DefaultValue ?? string.Empty);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error evaluating mapping {VariableName} for job {JobNumber}", 
                mapping.VariableName, job.JobNumber);
            throw;
        }
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
                _logger.LogDebug("Property '{PropertyName}' not found on job (original path: {PropertyPath})", part, propertyPath);
                return null;
            }

            currentValue = property.GetValue(currentValue);
        }

        return currentValue;
    }

    /// <summary>
    /// Converts a value to the specified data type.
    /// </summary>
    private object ConvertValue(object? value, string dataType)
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
}
