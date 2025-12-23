using STLLayouts.Core.Entities;

namespace STLLayouts.Core.Interfaces;

public interface ITemplateRepository : IRepository<Template>
{
    Task<List<Template>> GetActiveTemplatesAsync();
    Task<List<Template>> GetTemplatesByCategoryAsync(string category);
    Task<Template?> GetTemplateWithVersionsAsync(Guid templateId);
}
