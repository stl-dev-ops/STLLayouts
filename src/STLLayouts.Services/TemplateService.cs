using System.Text.RegularExpressions;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.Services;

public class TemplateService : ITemplateService
{
    private readonly ITemplateRepository _repository;
    private readonly ILogger<TemplateService> _logger;

    public TemplateService(ITemplateRepository repository, ILogger<TemplateService> logger)
    {
        _repository = repository ?? throw new ArgumentNullException(nameof(repository));
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));
    }

    public async Task<List<Template>> GetAllTemplatesAsync()
    {
        _logger.LogInformation("Retrieving all templates");
        return await _repository.GetAllAsync();
    }

    public async Task<List<Template>> GetActiveTemplatesAsync()
    {
        _logger.LogInformation("Retrieving active templates");
        return await _repository.GetActiveTemplatesAsync();
    }

    public async Task<List<Template>> GetTemplatesByCategoryAsync(string category)
    {
        if (string.IsNullOrWhiteSpace(category))
        {
            _logger.LogWarning("GetTemplatesByCategoryAsync called with null/empty category");
            throw new ArgumentException("Category cannot be null or empty", nameof(category));
        }

        _logger.LogInformation("Retrieving templates for category: {Category}", category);
        return await _repository.GetTemplatesByCategoryAsync(category);
    }

    public async Task<Template?> GetTemplateByIdAsync(int templateId)
    {
        if (templateId <= 0)
        {
            _logger.LogWarning("GetTemplateByIdAsync called with invalid templateId: {TemplateId}", templateId);
            throw new ArgumentException("Template ID must be greater than 0", nameof(templateId));
        }

        _logger.LogInformation("Retrieving template with ID: {TemplateId}", templateId);
        return await _repository.GetByIdAsync(new Guid());
    }

    public async Task<Template> CreateTemplateAsync(Template template)
    {
        if (template == null)
        {
            _logger.LogError("CreateTemplateAsync called with null template");
            throw new ArgumentNullException(nameof(template));
        }

        if (string.IsNullOrWhiteSpace(template.TemplateName))
        {
            _logger.LogWarning("CreateTemplateAsync called with empty template name");
            throw new ArgumentException("Template name cannot be null or empty", nameof(template.TemplateName));
        }

        if (string.IsNullOrWhiteSpace(template.FilePath))
        {
            _logger.LogWarning("CreateTemplateAsync called with empty file path");
            throw new ArgumentException("File path cannot be null or empty", nameof(template.FilePath));
        }

        if (!File.Exists(template.FilePath))
        {
            _logger.LogWarning("Template file does not exist: {FilePath}", template.FilePath);
            throw new FileNotFoundException($"Template file not found: {template.FilePath}", template.FilePath);
        }

        template.TemplateId = Guid.NewGuid();
        template.UploadedDate = DateTime.UtcNow;
        template.IsActive = true;
        template.CurrentVersion = 1;

        // Detect variables in the template
        var variables = await DetectVariablesInTemplateAsync(template.FilePath);
        template.Variables = variables;

        _logger.LogInformation("Creating new template: {TemplateName} with {VariableCount} variables", 
            template.TemplateName, variables.Count);

        return await _repository.AddAsync(template);
    }

    public async Task UpdateTemplateAsync(Template template)
    {
        if (template == null)
        {
            _logger.LogError("UpdateTemplateAsync called with null template");
            throw new ArgumentNullException(nameof(template));
        }

        if (string.IsNullOrWhiteSpace(template.TemplateName))
        {
            _logger.LogWarning("UpdateTemplateAsync called with empty template name");
            throw new ArgumentException("Template name cannot be null or empty", nameof(template.TemplateName));
        }

        _logger.LogInformation("Updating template: {TemplateId}", template.TemplateId);
        template.ModifiedDate = DateTime.UtcNow;

        await _repository.UpdateAsync(template);
    }

    public async Task DeleteTemplateAsync(int templateId)
    {
        if (templateId <= 0)
        {
            _logger.LogWarning("DeleteTemplateAsync called with invalid templateId: {TemplateId}", templateId);
            throw new ArgumentException("Template ID must be greater than 0", nameof(templateId));
        }

        _logger.LogInformation("Deleting template with ID: {TemplateId}", templateId);
        await _repository.DeleteAsync(new Guid());
    }

    public async Task<List<string>> DetectVariablesInTemplateAsync(string templateFilePath)
    {
        if (string.IsNullOrWhiteSpace(templateFilePath))
        {
            _logger.LogWarning("DetectVariablesInTemplateAsync called with null/empty file path");
            throw new ArgumentException("Template file path cannot be null or empty", nameof(templateFilePath));
        }

        if (!File.Exists(templateFilePath))
        {
            _logger.LogWarning("Template file does not exist: {FilePath}", templateFilePath);
            throw new FileNotFoundException($"Template file not found: {templateFilePath}", templateFilePath);
        }

        try
        {
            var content = await File.ReadAllTextAsync(templateFilePath);
            var variables = ExtractVariables(content);

            _logger.LogInformation("Detected {VariableCount} variables in template: {FilePath}", 
                variables.Count, templateFilePath);

            return variables;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error detecting variables in template: {FilePath}", templateFilePath);
            throw;
        }
    }

    public async Task<TemplateVersion> CreateVersionAsync(int templateId, string filePath, string comment)
    {
        if (templateId <= 0)
        {
            _logger.LogWarning("CreateVersionAsync called with invalid templateId: {TemplateId}", templateId);
            throw new ArgumentException("Template ID must be greater than 0", nameof(templateId));
        }

        if (string.IsNullOrWhiteSpace(filePath))
        {
            _logger.LogWarning("CreateVersionAsync called with null/empty file path");
            throw new ArgumentException("File path cannot be null or empty", nameof(filePath));
        }

        if (!File.Exists(filePath))
        {
            _logger.LogWarning("Version file does not exist: {FilePath}", filePath);
            throw new FileNotFoundException($"File not found: {filePath}", filePath);
        }

        _logger.LogInformation("Creating new version for template {TemplateId}: {Comment}", templateId, comment);

        var version = new TemplateVersion
        {
            TemplateVersionId = Guid.NewGuid(),
            TemplateId = new Guid(),
            VersionNumber = 1,
            FilePath = filePath,
            ChangedDate = DateTime.UtcNow,
            ChangeNotes = comment ?? string.Empty,
            ChangedBy = "System"
        };

        return await Task.FromResult(version);
    }

    /// <summary>
    /// Extracts variable placeholders from template content.
    /// Supports formats: {{VariableName}}, ${VariableName}, {VariableName}
    /// </summary>
    private List<string> ExtractVariables(string content)
    {
        var variables = new HashSet<string>(StringComparer.OrdinalIgnoreCase);

        // Pattern for {{VariableName}} format (Mustache-style)
        var pattern1 = new Regex(@"\{\{([a-zA-Z_][a-zA-Z0-9_]*)\}\}", RegexOptions.Compiled);
        foreach (Match match in pattern1.Matches(content))
        {
            variables.Add(match.Groups[1].Value);
        }

        // Pattern for ${VariableName} format (Template Literal style)
        var pattern2 = new Regex(@"\$\{([a-zA-Z_][a-zA-Z0-9_]*)\}", RegexOptions.Compiled);
        foreach (Match match in pattern2.Matches(content))
        {
            variables.Add(match.Groups[1].Value);
        }

        // Pattern for {VariableName} format (Simple style, but avoid C# format specifiers)
        var pattern3 = new Regex(@"\{([a-zA-Z_][a-zA-Z0-9_]*)\}(?![^{]*:)", RegexOptions.Compiled);
        foreach (Match match in pattern3.Matches(content))
        {
            variables.Add(match.Groups[1].Value);
        }

        return variables.OrderBy(v => v).ToList();
    }
}
