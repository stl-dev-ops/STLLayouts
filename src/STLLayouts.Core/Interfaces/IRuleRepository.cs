using STLLayouts.Core.Entities;

namespace STLLayouts.Core.Interfaces;

public interface IRuleRepository : IRepository<Rule>
{
    Task<List<Rule>> GetActiveRulesAsync();
    Task<List<Rule>> GetRulesByPriorityAsync();
    Task<List<Rule>> GetRulesByTemplateIdAsync(Guid templateId);
}
