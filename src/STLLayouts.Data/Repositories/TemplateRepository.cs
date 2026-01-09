using Microsoft.EntityFrameworkCore;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.Data.Repositories;

public class TemplateRepository(ApplicationDbContext context) : Repository<Template>(context), ITemplateRepository
{
    public async Task<List<Template>> GetActiveTemplatesAsync()
    {
        return await _dbSet
            .Where(t => t.IsActive)
            .OrderBy(t => t.TemplateName)
            .ToListAsync();
    }

    public async Task<List<Template>> GetTemplatesByCategoryAsync(string category)
    {
        return await _dbSet
            .Where(t => t.Category == category)
            .OrderBy(t => t.TemplateName)
            .ToListAsync();
    }

    public async Task<Template?> GetTemplateWithVersionsAsync(Guid templateId)
    {
        return await _dbSet
            .Include(t => t.Versions)
            .FirstOrDefaultAsync(t => t.TemplateId == templateId);
    }

    public async Task<Template?> GetByNameAsync(string templateName)
    {
        if (string.IsNullOrWhiteSpace(templateName))
        {
            return null;
        }

        return await _dbSet
            .FirstOrDefaultAsync(t => t.TemplateName == templateName);
    }
}
