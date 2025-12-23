using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;
using STLLayouts.WpfApp.Commands;

namespace STLLayouts.WpfApp.ViewModels;

public class RuleConditionItem
{
    public string Joiner { get; set; } = "AND"; // AND/OR
    public string Variable { get; set; } = string.Empty;
    public string Operator { get; set; } = "=="; // ==, !=, Contains, StartsWith, EndsWith, >, <, >=, <=
    public string Value { get; set; } = string.Empty;
}

public class RuleEditorViewModel : ViewModelBase
{
    private readonly IRuleRepository _ruleRepository;
    private readonly IVariableMappingService _variableMappingService;
    private readonly ILogger<RuleEditorViewModel> _logger;
    private readonly Guid _templateId;

    public RuleEditorViewModel(IRuleRepository ruleRepository, IVariableMappingService variableMappingService, ILogger<RuleEditorViewModel> logger, Guid templateId)
    {
        _ruleRepository = ruleRepository;
        _variableMappingService = variableMappingService;
        _logger = logger;
        _templateId = templateId;
        _dispatcher = System.Windows.Application.Current?.Dispatcher ?? System.Windows.Threading.Dispatcher.CurrentDispatcher;

        _logger.LogInformation("RuleEditorViewModel initializing for template {TemplateId}", templateId);

        Conditions = new ObservableCollection<RuleConditionItem>();
        Operators = new ObservableCollection<string>(new[] { "==", "!=", "Contains", "StartsWith", "EndsWith", ">", "<", ">=", "<=" });
        ConditionJoiners = new ObservableCollection<string>(new[] { "AND", "OR" });
        AvailableVariables = new ObservableCollection<string>();
        ExistingRules = new ObservableCollection<Rule>();

        AddConditionCommand = new RelayCommand(_ => AddCondition());
        RemoveConditionCommand = new RelayCommand(item => RemoveCondition(item as RuleConditionItem));
        SaveCommand = new AsyncRelayCommand(async _ => await SaveAsync());
        RefreshRulesCommand = new AsyncRelayCommand(async _ => await LoadExistingRulesAsync());
        NewRuleCommand = new RelayCommand(_ => StartNewRule());
        DeleteRuleCommand = new AsyncRelayCommand(async _ => await DeleteSelectedRuleAsync());
    }

    public async Task InitializeAsync()
    {
        if (_initialized) return;
        _initialized = true;
        _logger.LogInformation("Initializing rule editor data");
        await LoadAvailableVariablesAsync().ConfigureAwait(false);
        await LoadExistingRulesAsync().ConfigureAwait(false);
    }

    public ObservableCollection<RuleConditionItem> Conditions { get; }
    public ObservableCollection<string> Operators { get; }
    public ObservableCollection<string> ConditionJoiners { get; }
    public ObservableCollection<string> AvailableVariables { get; }
    public ObservableCollection<Rule> ExistingRules { get; }

    private string _ruleName = string.Empty;
    public string RuleName { get => _ruleName; set => SetProperty(ref _ruleName, value); }

    private int _priority = 100;
    public int Priority { get => _priority; set => SetProperty(ref _priority, value); }

    private bool _isActive = true;
    public bool IsActive { get => _isActive; set => SetProperty(ref _isActive, value); }

    private string _statusMessage = string.Empty;
    public string StatusMessage { get => _statusMessage; set => SetProperty(ref _statusMessage, value); }

    private string _conditionText = string.Empty;
    public string ConditionText { get => _conditionText; set => SetProperty(ref _conditionText, value); }

    private Rule? _selectedRule;
    public Rule? SelectedRule
    {
        get => _selectedRule;
        set
        {
            if (SetProperty(ref _selectedRule, value))
            {
                LoadRuleIntoEditor(value);
            }
        }
    }

    public ICommand AddConditionCommand { get; }
    public ICommand RemoveConditionCommand { get; }
    public ICommand SaveCommand { get; }
    public ICommand RefreshRulesCommand { get; }
    public ICommand NewRuleCommand { get; }
    public ICommand DeleteRuleCommand { get; }

    public event Action<Rule>? OnRuleSaved;
    private bool _initialized;
    private readonly System.Windows.Threading.Dispatcher _dispatcher;

    private async Task LoadAvailableVariablesAsync()
    {
        try
        {
            _logger.LogInformation("Loading available variables from database");
            var mappings = await _variableMappingService.GetAllMappingsAsync();
            _logger.LogInformation("Retrieved {MappingCount} variable mappings from database", mappings.Count());
            
            _dispatcher.Invoke(() =>
            {
                AvailableVariables.Clear();
                foreach (var mapping in mappings.OrderBy(m => m.VariableName))
                {
                    AvailableVariables.Add(mapping.VariableName);
                }
                StatusMessage = $"Loaded {AvailableVariables.Count} variables";
            });
            
            _logger.LogInformation("Successfully loaded {VariableCount} variables for rule editor", AvailableVariables.Count);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to load available variables");
            StatusMessage = $"Failed to load variables: {ex.Message}";
        }
    }

    private async Task LoadExistingRulesAsync()
    {
        try
        {
            _logger.LogInformation("Loading existing rules for template {TemplateId}", _templateId);
            var rules = await _ruleRepository.GetRulesByTemplateIdAsync(_templateId);

            _dispatcher.Invoke(() =>
            {
                ExistingRules.Clear();
                foreach (var rule in rules.OrderBy(r => r.Priority).ThenBy(r => r.RuleName))
                {
                    ExistingRules.Add(rule);
                }

                if (ExistingRules.Any())
                {
                    SelectedRule = ExistingRules.First();
                }
                else
                {
                    StartNewRule();
                }
            });

            _logger.LogInformation("Loaded {RuleCount} existing rules", ExistingRules.Count);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to load existing rules");
            StatusMessage = $"Failed to load rules: {ex.Message}";
        }
    }

    private async Task DeleteSelectedRuleAsync()
    {
        if (SelectedRule == null)
        {
            StatusMessage = "Select a rule to delete";
            return;
        }

        try
        {
            var id = SelectedRule.RuleId;
            _logger.LogInformation("Deleting rule {RuleId}", id);
            await _ruleRepository.DeleteAsync(id);
            StatusMessage = "Rule deleted";
            await LoadExistingRulesAsync();
            StartNewRule();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to delete rule");
            StatusMessage = $"Delete failed: {ex.Message}";
        }
    }

    private void AddCondition()
    {
        Conditions.Add(new RuleConditionItem());
    }

    private void RemoveCondition(RuleConditionItem? item)
    {
        if (item == null) return;
        Conditions.Remove(item);
    }

    private async Task SaveAsync()
    {
        try
        {
            if (string.IsNullOrWhiteSpace(RuleName))
            {
                StatusMessage = "Rule name is required";
                return;
            }

            _logger.LogInformation("Starting to save rule: {RuleName}", RuleName);
            var condition = Conditions.Any() ? BuildConditionExpression() : ConditionText;
            if (string.IsNullOrWhiteSpace(condition))
            {
                StatusMessage = "Condition is required";
                return;
            }

            if (SelectedRule != null)
            {
                _logger.LogInformation("Updating rule {RuleId}", SelectedRule.RuleId);
                SelectedRule.RuleName = RuleName;
                SelectedRule.Priority = Priority;
                SelectedRule.IsActive = IsActive;
                SelectedRule.Condition = condition;
                SelectedRule.ModifiedBy = Environment.UserName;
                SelectedRule.ModifiedDate = DateTime.UtcNow;

                await _ruleRepository.UpdateAsync(SelectedRule);
                _logger.LogInformation("Rule updated successfully {RuleId}", SelectedRule.RuleId);
                StatusMessage = "Rule updated";
                await LoadExistingRulesAsync();
                OnRuleSaved?.Invoke(SelectedRule);
            }
            else
            {
                var rule = new Rule
                {
                    RuleId = Guid.NewGuid(),
                    RuleName = RuleName,
                    Description = string.Empty,
                    Condition = condition,
                    TemplateId = _templateId,
                    Priority = Priority,
                    IsActive = IsActive,
                    CreatedBy = Environment.UserName,
                    CreatedDate = DateTime.UtcNow
                };

                _logger.LogInformation("Rule entity created, saving to database");
                await _ruleRepository.AddAsync(rule);
                _logger.LogInformation("Rule saved successfully with ID {RuleId}", rule.RuleId);
                StatusMessage = "Rule saved successfully";
                await LoadExistingRulesAsync();
                OnRuleSaved?.Invoke(rule);
            }
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to save rule");
            StatusMessage = $"Save failed: {ex.Message}";
        }
    }

    private void StartNewRule()
    {
        SelectedRule = null;
        RuleName = string.Empty;
        Priority = 100;
        IsActive = true;
        ConditionText = string.Empty;
        Conditions.Clear();
        AddCondition();
        StatusMessage = "New rule";
    }

    private void LoadRuleIntoEditor(Rule? rule)
    {
        if (rule == null)
        {
            return;
        }

        RuleName = rule.RuleName;
        Priority = rule.Priority;
        IsActive = rule.IsActive;
        ConditionText = rule.Condition;
        Conditions.Clear();
        TryPopulateConditionsFromText(rule.Condition);
        StatusMessage = $"Editing rule: {rule.RuleName}";
    }

    private void TryPopulateConditionsFromText(string condition)
    {
        try
        {
            // Very simple parser for patterns like: ctx["Var"].ToString().ToLowerInvariant().Contains("foo") AND ctx[...] ...
            // This only repopulates the UI for rules originally built with our builder.
            var tokens = condition.Split(new[] { " AND ", " and ", "&&", " OR ", " or ", "||" }, StringSplitOptions.RemoveEmptyEntries);
            foreach (var token in tokens)
            {
                var trimmed = token.Trim();
                // Expect shapes like (ctx["Variable"].ToString().ToLowerInvariant().Contains("value"))
                var varStart = trimmed.IndexOf("ctx[\"");
                var varEnd = trimmed.IndexOf("\"]", varStart + 5, StringComparison.Ordinal);
                if (varStart < 0 || varEnd < 0) continue;
                var variable = trimmed.Substring(varStart + 5, varEnd - (varStart + 5));

                string op = "";
                string val = "";

                if (trimmed.Contains("Contains("))
                {
                    op = "Contains";
                    var valStart = trimmed.IndexOf("Contains(\"") + "Contains(\"".Length;
                    var valEnd = trimmed.IndexOf("\")", valStart, StringComparison.Ordinal);
                    if (valStart > 0 && valEnd > valStart) val = trimmed.Substring(valStart, valEnd - valStart);
                }
                else if (trimmed.Contains("StartsWith("))
                {
                    op = "StartsWith";
                    var valStart = trimmed.IndexOf("StartsWith(\"") + "StartsWith(\"".Length;
                    var valEnd = trimmed.IndexOf("\")", valStart, StringComparison.Ordinal);
                    if (valStart > 0 && valEnd > valStart) val = trimmed.Substring(valStart, valEnd - valStart);
                }
                else if (trimmed.Contains("EndsWith("))
                {
                    op = "EndsWith";
                    var valStart = trimmed.IndexOf("EndsWith(\"") + "EndsWith(\"".Length;
                    var valEnd = trimmed.IndexOf("\")", valStart, StringComparison.Ordinal);
                    if (valStart > 0 && valEnd > valStart) val = trimmed.Substring(valStart, valEnd - valStart);
                }
                else
                {
                    // fallback for ==, !=, >, <, >=, <=
                    var operators = new[] { ">=", "<=", "==", "!=", ">", "<" };
                    foreach (var candidate in operators)
                    {
                        var idx = trimmed.IndexOf(candidate, StringComparison.Ordinal);
                        if (idx > 0)
                        {
                            op = candidate;
                            val = trimmed.Substring(idx + candidate.Length).Trim().Trim('"');
                            break;
                        }
                    }
                }

                if (!string.IsNullOrWhiteSpace(variable) && !string.IsNullOrWhiteSpace(op))
                {
                    var item = new RuleConditionItem
                    {
                        Variable = variable,
                        Operator = op,
                        Value = val,
                        Joiner = Conditions.Count == 0 ? "AND" : "AND"
                    };
                    _dispatcher.Invoke(() => Conditions.Add(item));
                }
            }

            if (!Conditions.Any())
            {
                _dispatcher.Invoke(AddCondition);
            }
        }
        catch
        {
            // If parsing fails, leave Conditions empty and rely on ConditionText
            _dispatcher.Invoke(() =>
            {
                Conditions.Clear();
                AddCondition();
            });
        }
    }

    private string BuildConditionExpression()
    {
        // Build a Dynamic LINQ expression that reads from ctx["VariableName"].
        // Strings: uses ToString() and string operators
        // Comparisons: uses double conversion for numeric operators
        var parts = new List<string>();
        foreach (var item in Conditions)
        {
            var variableKey = item.Variable.Replace("\"", "\\\"");
            var valueLiteral = item.Value;
            var isStringOp = item.Operator is "Contains" or "StartsWith" or "EndsWith" or "==" or "!=";

            // Prepare left-hand side expression referencing context dictionary
            string lhs = isStringOp
                ? $"(ctx[\"{variableKey}\"] ?? \"\").ToString().ToLowerInvariant()"
                : $"Convert.ToDouble(ctx[\"{variableKey}\"] ?? 0)";

            // Prepare right-hand side literal
            if (isStringOp)
            {
                valueLiteral = "\"" + valueLiteral.ToLowerInvariant().Replace("\"", "\\\"") + "\"";
            }

            string expr = item.Operator switch
            {
                "Contains" => $"{lhs}.Contains({valueLiteral})",
                "StartsWith" => $"{lhs}.StartsWith({valueLiteral})",
                "EndsWith" => $"{lhs}.EndsWith({valueLiteral})",
                _ => $"{lhs} {item.Operator} {valueLiteral}"
            };

            parts.Add(parts.Count == 0 ? expr : $" {item.Joiner} {expr}");
        }
        return string.Join(string.Empty, parts);
    }
}
