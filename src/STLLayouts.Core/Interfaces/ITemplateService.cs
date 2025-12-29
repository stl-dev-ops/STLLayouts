using System;
using STLLayouts.Core.Entities;

namespace STLLayouts.Core.Interfaces;

public interface ITemplateService
{
    Task<List<Template>> GetAllTemplatesAsync();
    Task<List<Template>> GetActiveTemplatesAsync();
    Task<List<Template>> GetTemplatesByCategoryAsync(string category);
    Task<Template?> GetTemplateByIdAsync(Guid templateId);
    Task<Template> CreateTemplateAsync(Template template);
    Task UpdateTemplateAsync(Template template);
    Task DeleteTemplateAsync(Guid templateId);
    Task<List<string>> DetectVariablesInTemplateAsync(string templateFilePath);
    Task<TemplateVersion> CreateVersionAsync(Guid templateId, string filePath, string comment);
}
