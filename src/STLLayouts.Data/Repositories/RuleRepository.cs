using Microsoft.EntityFrameworkCore;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.Data.Repositories;

public class RuleRepository : Repository<Rule>, IRuleRepository
{
    public RuleRepository(ApplicationDbContext context) : base(context)
    {
    }

    public async Task<List<Rule>> GetActiveRulesAsync()
    {
        return await _dbSet
            .Where(r => r.IsActive)
            .Include(r => r.Template)
            .OrderBy(r => r.Priority)
            .ToListAsync();
    }

    public async Task<List<Rule>> GetRulesByPriorityAsync()
    {
        return await _dbSet
            .Include(r => r.Template)
            .OrderBy(r => r.Priority)
            .ThenBy(r => r.RuleName)
            .ToListAsync();
    }

    public async Task<List<Rule>> GetRulesByTemplateIdAsync(Guid templateId)
    {
        return await _dbSet
            .Where(r => r.TemplateId == templateId)
            .Include(r => r.Template)
            .OrderBy(r => r.Priority)
            .ThenBy(r => r.RuleName)
            .ToListAsync();
    }
}
