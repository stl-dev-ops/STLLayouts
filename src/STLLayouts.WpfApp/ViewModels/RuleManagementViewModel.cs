using System.Collections.ObjectModel;
using System.Windows.Input;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;
using STLLayouts.WpfApp.Commands;

namespace STLLayouts.WpfApp.ViewModels;

public class RuleManagementViewModel : ViewModelBase
{
    private readonly IRuleRepository _ruleRepository;
    private readonly ILogger<RuleManagementViewModel> _logger;

    public RuleManagementViewModel(IRuleRepository ruleRepository, ILogger<RuleManagementViewModel> logger)
    {
        _ruleRepository = ruleRepository;
        _logger = logger;

        Rules = new ObservableCollection<Rule>();
        RefreshCommand = new AsyncRelayCommand(async _ => await LoadRulesAsync());
        AddRuleCommand = new AsyncRelayCommand(async _ => await AddRuleAsync());
        EditRuleCommand = new AsyncRelayCommand(async _ => await EditRuleAsync());
        DeleteRuleCommand = new AsyncRelayCommand(async _ => await DeleteRuleAsync());
    }

    public ObservableCollection<Rule> Rules { get; }

    private Rule? _selectedRule;
    public Rule? SelectedRule
    {
        get => _selectedRule;
        set => SetProperty(ref _selectedRule, value);
    }

    private string _statusMessage = string.Empty;
    public string StatusMessage
    {
        get => _statusMessage;
        set => SetProperty(ref _statusMessage, value);
    }

    public ICommand RefreshCommand { get; }
    public ICommand AddRuleCommand { get; }
    public ICommand EditRuleCommand { get; }
    public ICommand DeleteRuleCommand { get; }

    public async Task LoadRulesAsync()
    {
        try
        {
            var rules = await _ruleRepository.GetActiveRulesAsync();
            Rules.Clear();
            foreach (var rule in rules)
            {
                Rules.Add(rule);
            }
            StatusMessage = $"Loaded {Rules.Count} rules";
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to load rules");
            StatusMessage = $"Error: {ex.Message}";
        }
    }

    private async Task AddRuleAsync()
    {
        try
        {
            // Minimal in-UI creation; for full creation use governed task
            var rule = new Rule
            {
                RuleId = Guid.NewGuid(),
                RuleName = "New Rule",
                Description = "",
                Condition = "JobStatus == \"Completed\"",
                TemplateId = Guid.Empty,
                Priority = 100,
                IsActive = true,
                CreatedBy = Environment.UserName,
                CreatedDate = DateTime.UtcNow
            };

            await _ruleRepository.AddAsync(rule);
            await LoadRulesAsync();
            StatusMessage = "Rule added";
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to add rule");
            StatusMessage = $"Add failed: {ex.Message}";
        }
    }

    private async Task EditRuleAsync()
    {
        if (SelectedRule == null) return;
        try
        {
            SelectedRule.ModifiedBy = Environment.UserName;
            SelectedRule.ModifiedDate = DateTime.UtcNow;
            await _ruleRepository.UpdateAsync(SelectedRule);
            StatusMessage = "Rule updated";
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to update rule");
            StatusMessage = $"Update failed: {ex.Message}";
        }
    }

    private async Task DeleteRuleAsync()
    {
        if (SelectedRule == null) return;
        try
        {
            await _ruleRepository.DeleteAsync(SelectedRule.RuleId);
            await LoadRulesAsync();
            StatusMessage = "Rule deleted";
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to delete rule");
            StatusMessage = $"Delete failed: {ex.Message}";
        }
    }
}
