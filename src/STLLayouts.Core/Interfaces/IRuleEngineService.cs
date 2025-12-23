using STLLayouts.Core.Entities;

namespace STLLayouts.Core.Interfaces;

public class RuleMatch
{
    public Rule Rule { get; set; } = null!;
    public Template Template { get; set; } = null!;
    public TimeSpan EvaluationTime { get; set; }
    public bool Matched { get; set; }
}

public interface IRuleEngineService
{
    Task<List<RuleMatch>> EvaluateRulesAsync(Job job);
    Task<List<RuleMatch>> EvaluateRulesAsync(Dictionary<string, object> context);
    Task<bool> TestRuleAsync(Rule rule, Job job);
    Task<bool> ValidateRuleConditionAsync(string condition);
}
