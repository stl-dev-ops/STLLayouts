using STLLayouts.Core.Entities;

namespace STLLayouts.Core.Interfaces;

public interface ITemplateService
{
    Task<List<Template>> GetAllTemplatesAsync();
    Task<List<Template>> GetActiveTemplatesAsync();
    Task<List<Template>> GetTemplatesByCategoryAsync(string category);
    Task<Template?> GetTemplateByIdAsync(int templateId);
    Task<Template> CreateTemplateAsync(Template template);
    Task UpdateTemplateAsync(Template template);
    Task DeleteTemplateAsync(int templateId);
    Task<List<string>> DetectVariablesInTemplateAsync(string templateFilePath);
    Task<TemplateVersion> CreateVersionAsync(int templateId, string filePath, string comment);
}
