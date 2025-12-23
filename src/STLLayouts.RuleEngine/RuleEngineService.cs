using System.Linq.Dynamic.Core;
using System.Linq.Expressions;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.RuleEngine;

public class RuleEngineService : IRuleEngineService
{
    private readonly IRuleRepository _ruleRepository;

    public RuleEngineService(IRuleRepository ruleRepository)
    {
        _ruleRepository = ruleRepository;
    }

    public async Task<List<RuleMatch>> EvaluateRulesAsync(Job job)
    {
        Console.WriteLine($"[RuleEngine] Evaluating rules for job: {job.JobNumber}, ProductDescription: {job.ProductDescription}");
        // Build a normalized, lowercase string context to avoid method calls in expressions
        var sctx = new Dictionary<string, string>
        {
            ["ord__ref"] = (job.ord__ref ?? string.Empty).ToLowerInvariant(),
            ["JobNumber"] = (job.JobNumber ?? string.Empty).ToLowerInvariant(),
            ["ProductDescription"] = (job.ProductDescription ?? string.Empty).ToLowerInvariant(),
            ["CustomerName"] = (job.CustomerName ?? string.Empty).ToLowerInvariant(),
            ["JobStatus"] = (job.JobStatus ?? string.Empty).ToLowerInvariant(),
            ["CreatedDate"] = job.CreatedDate.ToString("O").ToLowerInvariant(),
            ["DueDate"] = (job.DueDate ?? DateTime.MinValue).ToString("O").ToLowerInvariant(),
            ["kla__ref"] = (job.kla__ref ?? string.Empty).ToLowerInvariant(),
            ["kla__rpn"] = (job.kla__rpn ?? string.Empty).ToLowerInvariant()
        };

        foreach (var prop in job.ExtendedProperties)
        {
            sctx[prop.Key] = (prop.Value ?? string.Empty).ToString()!.ToLowerInvariant();
        }

        Console.WriteLine($"[RuleEngine] Context built with {sctx.Count} properties");

        return await EvaluateRulesAsync(sctx);
    }

    // Wrapper to satisfy interface: convert object context to normalized string context
    public async Task<List<RuleMatch>> EvaluateRulesAsync(Dictionary<string, object> context)
    {
        var sctx = context.ToDictionary(
            kvp => kvp.Key,
            kvp => (kvp.Value ?? string.Empty).ToString()!.ToLowerInvariant());
        return await EvaluateRulesAsync(sctx);
    }

    public async Task<List<RuleMatch>> EvaluateRulesAsync(Dictionary<string, string> context)
    {
        var rules = await _ruleRepository.GetActiveRulesAsync();
        Console.WriteLine($"[RuleEngine] Found {rules.Count} active rules to evaluate");
        var matches = new List<RuleMatch>();

        foreach (var rule in rules)
        {
            Console.WriteLine($"[RuleEngine] Evaluating rule: {rule.RuleName}, Condition: {rule.Condition}");
            var startTime = DateTime.Now;
            var matched = false;

            try
            {
                matched = EvaluateCondition(rule.Condition, context);
                Console.WriteLine($"[RuleEngine] Rule {rule.RuleName} result: {matched}");
            }
            catch (Exception ex)
            {
                // Log error but continue processing other rules
                Console.WriteLine($"[RuleEngine] Error evaluating rule {rule.RuleName}: {ex.Message}");
            }

            matches.Add(new RuleMatch
            {
                Rule = rule,
                Template = rule.Template!,
                Matched = matched,
                EvaluationTime = DateTime.Now - startTime
            });
        }

        Console.WriteLine($"[RuleEngine] Completed evaluation: {matches.Count(m => m.Matched)} matched out of {matches.Count} total");
        return matches.OrderBy(m => m.Rule.Priority).ToList();
    }

    public async Task<bool> TestRuleAsync(Rule rule, Job job)
    {
        var sctx = new Dictionary<string, string>
        {
            ["ord__ref"] = (job.ord__ref ?? string.Empty).ToLowerInvariant(),
            ["JobNumber"] = (job.JobNumber ?? string.Empty).ToLowerInvariant(),
            ["ProductDescription"] = (job.ProductDescription ?? string.Empty).ToLowerInvariant(),
            ["CustomerName"] = (job.CustomerName ?? string.Empty).ToLowerInvariant(),
            ["JobStatus"] = (job.JobStatus ?? string.Empty).ToLowerInvariant(),
            ["CreatedDate"] = job.CreatedDate.ToString("O").ToLowerInvariant(),
            ["DueDate"] = (job.DueDate ?? DateTime.MinValue).ToString("O").ToLowerInvariant(),
            ["kla__ref"] = (job.kla__ref ?? string.Empty).ToLowerInvariant(),
            ["kla__rpn"] = (job.kla__rpn ?? string.Empty).ToLowerInvariant()
        };

        foreach (var prop in job.ExtendedProperties)
        {
            sctx[prop.Key] = (prop.Value ?? string.Empty).ToString()!.ToLowerInvariant();
        }

        return await Task.Run(() => EvaluateCondition(rule.Condition, sctx));
    }

    public async Task<bool> ValidateRuleConditionAsync(string condition)
    {
        try
        {
            // Test with sample context
            var testContext = new Dictionary<string, string>
            {
                ["JobNumber"] = "test123",
                ["CustomerName"] = "test customer",
                ["JobStatus"] = "active"
            };

            EvaluateCondition(condition, testContext);
            return await Task.FromResult(true);
        }
        catch
        {
            return await Task.FromResult(false);
        }
    }

    private bool EvaluateCondition(string condition, Dictionary<string, string> context)
    {
        try
        {
            // Replace SQL-like syntax with C# LINQ syntax
            var expression = ConvertToLinqExpression(condition);

            // Use System.Linq.Dynamic.Core to evaluate the expression
            var result = DynamicExpressionParser.ParseLambda(
                new[] { Expression.Parameter(typeof(Dictionary<string, string>), "ctx") },
                typeof(bool),
                expression,
                context).Compile().DynamicInvoke(context);

            return (bool)(result ?? false);
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Rule evaluation error: {ex.Message}\nCondition: {condition}");
            return false;
        }
    }

    private string ConvertToLinqExpression(string condition)
    {
        // Normalize logical joiners and remove ToString()/ToLowerInvariant()/null-coalescing for ctx access.
        var expr = condition
            .Replace("AND", "&&", StringComparison.OrdinalIgnoreCase)
            .Replace("OR", "||", StringComparison.OrdinalIgnoreCase)
            .Replace("NOT", "!", StringComparison.OrdinalIgnoreCase);

        // Remove common patterns introduced by the rule builder
        expr = expr.Replace(".ToString().ToLowerInvariant()", string.Empty)
                   .Replace(".ToLowerInvariant()", string.Empty)
                   .Replace(" ?? \"\"", string.Empty);

        return expr;
    }
}
