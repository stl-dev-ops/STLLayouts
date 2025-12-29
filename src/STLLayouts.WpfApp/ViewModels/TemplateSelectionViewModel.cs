using System.Collections.ObjectModel;
using System.Windows.Input;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;
using STLLayouts.WpfApp.Commands;
using Microsoft.Win32;

namespace STLLayouts.WpfApp.ViewModels;

/// <summary>
/// ViewModel for template selection and management.
/// Allows users to browse, filter, and select document templates.
/// </summary>
public class TemplateSelectionViewModel : ViewModelBase
{
    private readonly ITemplateService _templateService;
    private readonly ILogger<TemplateSelectionViewModel> _logger;

    private readonly AsyncRelayCommand _deleteTemplateCommand;

    private Template? _selectedTemplate;
    private string _selectedCategory = "All";
    private bool _isLoading;
    private string _statusMessage = string.Empty;
    private string _searchText = string.Empty;
    private bool _isLoadingTemplates;
    private List<Template> _allTemplates = new();

    public TemplateSelectionViewModel(
        ITemplateService templateService,
        ILogger<TemplateSelectionViewModel> logger)
    {
        _templateService = templateService ?? throw new ArgumentNullException(nameof(templateService));
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));

        Templates = new ObservableCollection<Template>();
        Categories = new ObservableCollection<string> { "All" };

        LoadTemplatesCommand = new AsyncRelayCommand(async _ => await LoadTemplatesAsync());
        RefreshCommand = new AsyncRelayCommand(async _ => await LoadTemplatesAsync());
        UploadTemplateCommand = new AsyncRelayCommand(async _ => await UploadTemplateAsync());
        ManageRulesCommand = new AsyncRelayCommand(async _ => await ManageRulesAsync());

        _deleteTemplateCommand = new AsyncRelayCommand(async _ => await DeleteSelectedTemplateAsync(), _ => SelectedTemplate != null);

        // Auto-load templates on construction so the list is always fresh without clicking Load.
        if (!_autoLoadStarted)
        {
            _autoLoadStarted = true;
            _ = LoadTemplatesAsync();
        }
    }

    public ObservableCollection<Template> Templates { get; }
    public ObservableCollection<string> Categories { get; }

    public Template? SelectedTemplate
    {
        get => _selectedTemplate;
        set
        {
            if (SetProperty(ref _selectedTemplate, value))
            {
                _deleteTemplateCommand.RaiseCanExecuteChanged();
            }
        }
    }

    public string SelectedCategory
    {
        get => _selectedCategory;
        set
        {
            if (SetProperty(ref _selectedCategory, value))
            {
                _ = FilterTemplatesAsync();
            }
        }
    }

    public string SearchText
    {
        get => _searchText;
        set
        {
            if (SetProperty(ref _searchText, value))
            {
                _ = FilterTemplatesAsync();
            }
        }
    }

    public bool IsLoading
    {
        get => _isLoading;
        set => SetProperty(ref _isLoading, value);
    }

    public string StatusMessage
    {
        get => _statusMessage;
        set => SetProperty(ref _statusMessage, value);
    }

    public ICommand LoadTemplatesCommand { get; }
    public ICommand RefreshCommand { get; }
    public ICommand UploadTemplateCommand { get; }
    public ICommand ManageRulesCommand { get; }
    public ICommand DeleteTemplateCommand => _deleteTemplateCommand;

    private bool _autoLoadStarted;

    public async Task LoadTemplatesAsync()
    {
        if (_isLoadingTemplates)
        {
            return;
        }

        _isLoadingTemplates = true;
        IsLoading = true;
        StatusMessage = "Loading templates...";

        try
        {
            _logger.LogInformation("Loading all templates");
            var templates = await _templateService.GetAllTemplatesAsync();
            _allTemplates = templates.OrderBy(t => t.TemplateName).ToList();

            // Extract unique categories
            var categories = _allTemplates
                .Select(t => t.Category)
                .Where(c => !string.IsNullOrEmpty(c))
                .Distinct()
                .OrderBy(c => c)
                .ToList();

            Categories.Clear();
            Categories.Add("All");
            foreach (var category in categories)
            {
                Categories.Add(category);
            }

            // Ensure a safe default selection to avoid null filtering
            if (string.IsNullOrWhiteSpace(SelectedCategory) || (SelectedCategory != "All" && !categories.Contains(SelectedCategory)))
            {
                SelectedCategory = "All";
            }

            await ApplyFiltersAsync();

            StatusMessage = $"Loaded {Templates.Count} templates";
            _logger.LogInformation("Loaded {TemplateCount} templates with {CategoryCount} categories",
                Templates.Count, categories.Count);
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error loading templates: {ex.Message}";
            _logger.LogError(ex, "Failed to load templates");
        }
        finally
        {
            IsLoading = false;
            _isLoadingTemplates = false;
        }
    }

    public async Task FilterTemplatesAsync()
    {
        try
        {
            _logger.LogDebug("Filtering templates by category '{Category}' and search '{SearchText}'",
                SelectedCategory, SearchText);

            await ApplyFiltersAsync();
            StatusMessage = $"Found {Templates.Count} template(s)";
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error filtering templates: {ex.Message}";
            _logger.LogError(ex, "Failed to filter templates");
        }
    }

    private Task ApplyFiltersAsync()
    {
        IEnumerable<Template> toShow = _allTemplates;

        if (!string.IsNullOrWhiteSpace(SelectedCategory) && SelectedCategory != "All")
        {
            toShow = toShow.Where(t => t.Category == SelectedCategory);
        }

        if (!string.IsNullOrWhiteSpace(SearchText))
        {
            var searchLower = SearchText.ToLowerInvariant();
            toShow = toShow.Where(t =>
                (t.TemplateName ?? string.Empty).IndexOf(searchLower, StringComparison.OrdinalIgnoreCase) >= 0 ||
                (t.Description ?? string.Empty).IndexOf(searchLower, StringComparison.OrdinalIgnoreCase) >= 0);
        }

        Templates.Clear();
        foreach (var template in toShow.OrderBy(t => t.TemplateName))
        {
            Templates.Add(template);
        }

        return Task.CompletedTask;
    }

    public async Task<List<string>> GetTemplateVariablesAsync()
    {
        if (SelectedTemplate == null)
        {
            _logger.LogWarning("GetTemplateVariablesAsync called with no selected template");
            return new();
        }

        try
        {
            _logger.LogInformation("Detecting variables in template: {TemplateName}", SelectedTemplate.TemplateName);
            return await _templateService.DetectVariablesInTemplateAsync(SelectedTemplate.FilePath);
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error detecting variables: {ex.Message}";
            _logger.LogError(ex, "Failed to detect template variables");
            return new();
        }
    }

    private async Task UploadTemplateAsync()
    {
        try
        {
            var ofd = new OpenFileDialog
            {
                Filter = "Office Templates (*.docx;*.xlsx)|*.docx;*.xlsx|All Files (*.*)|*.*",
                Title = "Select Template File"
            };

            var result = ofd.ShowDialog();
            if (result != true)
            {
                StatusMessage = "Upload cancelled";
                return;
            }

            var filePath = ofd.FileName;
            var ext = System.IO.Path.GetExtension(filePath).ToLowerInvariant();
            var name = System.IO.Path.GetFileNameWithoutExtension(filePath);

            var template = new Template
            {
                TemplateName = name,
                Category = "General",
                FileExtension = ext,
                FilePath = filePath,
                Description = $"Registered from GUI on {DateTime.Now:yyyy-MM-dd}",
                UploadedBy = Environment.UserName,
                IsActive = true
            };

            // Detect variables and create
            template.Variables = await _templateService.DetectVariablesInTemplateAsync(filePath);
            var created = await _templateService.CreateTemplateAsync(template);

            StatusMessage = $"Template registered: {created.TemplateName}";
            await LoadTemplatesAsync();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to upload/register template");
            StatusMessage = $"Upload failed: {ex.Message}";
        }
    }

    private async Task DeleteSelectedTemplateAsync()
    {
        if (SelectedTemplate == null)
        {
            StatusMessage = "Select a template to delete";
            return;
        }

        var templateToDelete = SelectedTemplate;

        var result = System.Windows.MessageBox.Show(
            $"Delete template '{templateToDelete.TemplateName}'?",
            "Confirm delete",
            System.Windows.MessageBoxButton.YesNo,
            System.Windows.MessageBoxImage.Warning);

        if (result != System.Windows.MessageBoxResult.Yes)
        {
            StatusMessage = "Delete cancelled";
            return;
        }

        try
        {
            _logger.LogInformation("Deleting template {TemplateId} - {TemplateName}", templateToDelete.TemplateId, templateToDelete.TemplateName);

            await _templateService.DeleteTemplateAsync(templateToDelete.TemplateId);

            SelectedTemplate = null;
            StatusMessage = $"Deleted template: {templateToDelete.TemplateName}";

            await LoadTemplatesAsync();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to delete template {TemplateId}", templateToDelete.TemplateId);

            var msg = ex.Message ?? string.Empty;
            if (msg.Contains("FOREIGN KEY", StringComparison.OrdinalIgnoreCase) ||
                msg.Contains("REFERENCE constraint", StringComparison.OrdinalIgnoreCase) ||
                msg.Contains("The DELETE statement conflicted", StringComparison.OrdinalIgnoreCase) ||
                msg.Contains("conflicted with the REFERENCE constraint", StringComparison.OrdinalIgnoreCase))
            {
                StatusMessage = "Delete failed: template is referenced by existing rules";
                System.Windows.MessageBox.Show(
                    "This template can't be deleted because it is referenced by one or more rules. Delete or reassign the rules first, then try again.",
                    "Delete blocked",
                    System.Windows.MessageBoxButton.OK,
                    System.Windows.MessageBoxImage.Information);
                return;
            }

            StatusMessage = $"Delete failed: {ex.Message}";
            System.Windows.MessageBox.Show(
                $"Failed to delete template: {ex.Message}",
                "Delete failed",
                System.Windows.MessageBoxButton.OK,
                System.Windows.MessageBoxImage.Error);
        }
    }

    private Task ManageRulesAsync()
    {
        if (SelectedTemplate == null)
        {
            StatusMessage = "Select a template to manage rules";
            return Task.CompletedTask;
        }

        try
        {
            _logger.LogInformation("Opening Rule Management for template {TemplateId} - {TemplateName}", SelectedTemplate.TemplateId, SelectedTemplate.TemplateName);
            StatusMessage = "Opening Rule Management...";
            
            var dialog = new STLLayouts.WpfApp.Views.RuleEditorDialog();
            _logger.LogInformation("Created RuleEditorDialog instance");
            
            var ruleRepo = (IRuleRepository)App.Current.Services.GetService(typeof(IRuleRepository))!;
            var varService = (IVariableMappingService)App.Current.Services.GetService(typeof(IVariableMappingService))!;
            var logger = (Microsoft.Extensions.Logging.ILogger<RuleEditorViewModel>)App.Current.Services.GetService(typeof(Microsoft.Extensions.Logging.ILogger<RuleEditorViewModel>))!;
            
            _logger.LogInformation("Retrieved dependencies for RuleEditorViewModel");
            
            var viewModel = new RuleEditorViewModel(ruleRepo, varService, logger, SelectedTemplate.TemplateId);
            _logger.LogInformation("Created RuleEditorViewModel instance");
            
            dialog.DataContext = viewModel;
            _logger.LogInformation("Set dialog DataContext to RuleEditorViewModel");
            
            dialog.Owner = System.Windows.Application.Current.MainWindow;
            _logger.LogInformation("Set dialog owner");
            
            dialog.ShowDialog();
            _logger.LogInformation("Dialog closed");
            
            StatusMessage = "Rule editor closed";
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to open rule management");
            StatusMessage = $"Rule management failed: {ex.Message}";
        }
        return Task.CompletedTask;
    }
}
