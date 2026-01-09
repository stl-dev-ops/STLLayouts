using System.Collections.ObjectModel;
using System.Windows.Input;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;
using STLLayouts.WpfApp.Commands;

namespace STLLayouts.WpfApp.ViewModels;

/// <summary>
/// ViewModel for mapping job properties to template variables.
/// Allows users to configure how job data maps to template placeholders.
/// </summary>
public class VariableMapViewModel : ViewModelBase
{
    private readonly IVariableMappingService _variableMappingService;
    private readonly ILogger<VariableMapViewModel> _logger;

    private bool _isLoading;
    private string _statusMessage = string.Empty;
    private VariableMapping? _selectedMapping;
    private string _selectedCategory = "All";

    public VariableMapViewModel(
        IVariableMappingService variableMappingService,
        ILogger<VariableMapViewModel> logger)
    {
        _variableMappingService = variableMappingService ?? throw new ArgumentNullException(nameof(variableMappingService));
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));

        VariableMappings = [];
        Categories = ["All"];

        LoadMappingsCommand = new AsyncRelayCommand(async _ => await LoadMappingsAsync());
        SaveMappingCommand = new AsyncRelayCommand(async _ => await SaveMappingAsync(), _ => SelectedMapping != null);
        DeleteMappingCommand = new AsyncRelayCommand(async _ => await DeleteMappingAsync(), _ => SelectedMapping != null);
        CreateVariableCommand = new AsyncRelayCommand(async _ => await CreateVariableAsync());
        EditVariableCommand = new AsyncRelayCommand(async _ => await EditVariableAsync(), _ => SelectedMapping != null);
    }

    public ObservableCollection<VariableMapping> VariableMappings { get; }
    public ObservableCollection<string> Categories { get; }

    public VariableMapping? SelectedMapping
    {
        get => _selectedMapping;
        set => SetProperty(ref _selectedMapping, value);
    }

    public string SelectedCategory
    {
        get => _selectedCategory;
        set
        {
            if (SetProperty(ref _selectedCategory, value))
            {
                _ = FilterMappingsAsync();
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

    public ICommand LoadMappingsCommand { get; }
    public ICommand SaveMappingCommand { get; }
    public ICommand DeleteMappingCommand { get; }
    public ICommand CreateVariableCommand { get; }
    public ICommand EditVariableCommand { get; }

    public async Task LoadMappingsAsync()
    {
        IsLoading = true;
        StatusMessage = "Loading variable mappings...";

        try
        {
            _logger.LogInformation("Loading all variable mappings");
            var mappings = await _variableMappingService.GetAllMappingsAsync();

            VariableMappings.Clear();
            foreach (var mapping in mappings.OrderBy(m => m.VariableName))
            {
                VariableMappings.Add(mapping);
            }

            // Extract unique categories
            var categories = mappings
                .Select(m => m.Category)
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

            StatusMessage = $"Loaded {VariableMappings.Count} variable mappings";
            _logger.LogInformation("Loaded {MappingCount} variable mappings with {CategoryCount} categories",
                VariableMappings.Count, categories.Count);
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error loading mappings: {ex.Message}";
            _logger.LogError(ex, "Failed to load variable mappings");
        }
        finally
        {
            IsLoading = false;
        }
    }

    public async Task FilterMappingsAsync()
    {
        try
        {
            _logger.LogDebug("Filtering variable mappings by category '{Category}'", SelectedCategory);

            var mappings = await _variableMappingService.GetAllMappingsAsync();

            if (SelectedCategory != "All")
            {
                mappings = [.. mappings.Where(m => m.Category == SelectedCategory)];
            }

            VariableMappings.Clear();
            foreach (var mapping in mappings.OrderBy(m => m.VariableName))
            {
                VariableMappings.Add(mapping);
            }

            StatusMessage = $"Found {VariableMappings.Count} mapping(s)";
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error filtering mappings: {ex.Message}";
            _logger.LogError(ex, "Failed to filter variable mappings");
        }
    }

    public async Task SaveMappingAsync()
    {
        if (SelectedMapping == null)
        {
            _logger.LogWarning("SaveMappingAsync called with no selected mapping");
            return;
        }

        try
        {
            _logger.LogInformation("Saving variable mapping: {VariableName}", SelectedMapping.VariableName);

            if (SelectedMapping.VariableMappingId == Guid.Empty)
            {
                await _variableMappingService.CreateMappingAsync(SelectedMapping);
                StatusMessage = $"Created mapping: {SelectedMapping.VariableName}";
            }
            else
            {
                await _variableMappingService.UpdateMappingAsync(SelectedMapping);
                StatusMessage = $"Updated mapping: {SelectedMapping.VariableName}";
            }

            _logger.LogInformation("Successfully saved variable mapping: {VariableName}", SelectedMapping.VariableName);
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error saving mapping: {ex.Message}";
            _logger.LogError(ex, "Failed to save variable mapping");
        }
    }

    public async Task DeleteMappingAsync()
    {
        if (SelectedMapping == null)
        {
            _logger.LogWarning("DeleteMappingAsync called with no selected mapping");
            return;
        }

        try
        {
            _logger.LogInformation("Deleting variable mapping: {VariableName}", SelectedMapping.VariableName);
            await _variableMappingService.DeleteMappingAsync(SelectedMapping.VariableMappingId);

            var mappingToRemove = VariableMappings.FirstOrDefault(m => m.VariableMappingId == SelectedMapping.VariableMappingId);
            if (mappingToRemove != null)
            {
                VariableMappings.Remove(mappingToRemove);
            }

            SelectedMapping = null;
            StatusMessage = "Mapping deleted successfully";
            _logger.LogInformation("Successfully deleted variable mapping");
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error deleting mapping: {ex.Message}";
            _logger.LogError(ex, "Failed to delete variable mapping");
        }
    }

    private async Task CreateVariableAsync()
    {
        try
        {
            var services = ((App)System.Windows.Application.Current).Services;
            var logger = services.GetService(typeof(ILogger<CreateVariableViewModel>)) as ILogger<CreateVariableViewModel>;
            var contextSchemaService = services.GetService(typeof(IContextSchemaService)) as IContextSchemaService;

            var viewModel = new CreateVariableViewModel(_variableMappingService, contextSchemaService!, logger!);

            var dialog = new Views.CreateVariableDialog(viewModel);
            var result = dialog.ShowDialog();

            if (result == true)
            {
                // Refresh the list after creation
                await LoadMappingsAsync();
                StatusMessage = "Variable created successfully";
            }
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error creating variable: {ex.Message}";
            _logger.LogError(ex, "Failed to create variable");
        }
    }

    private async Task EditVariableAsync()
    {
        if (SelectedMapping == null)
        {
            return;
        }

        try
        {
            var services = ((App)System.Windows.Application.Current).Services;
            var logger = services.GetService(typeof(ILogger<EditVariableViewModel>)) as ILogger<EditVariableViewModel>;
            var contextSchemaService = services.GetService(typeof(IContextSchemaService)) as IContextSchemaService;

            var vm = new EditVariableViewModel(_variableMappingService, contextSchemaService!, logger!, SelectedMapping);

            var dialog = new Views.EditVariableDialog(vm);
            var result = dialog.ShowDialog();

            if (result == true)
            {
                await LoadMappingsAsync();
                StatusMessage = "Variable updated successfully";
            }
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error editing variable: {ex.Message}";
            _logger.LogError(ex, "Failed to edit variable");
        }
    }

    /// <summary>
    /// Resolves all mappings for a given job.
    /// </summary>
    public async Task<Dictionary<string, object>> ResolveJobVariablesAsync(Job job)
    {
        if (job == null)
        {
            _logger.LogWarning("ResolveJobVariablesAsync called with null job");
            return [];
        }

        try
        {
            _logger.LogInformation("Resolving variables for job: {JobNumber}", job.JobNumber);
            return await _variableMappingService.ResolveVariablesAsync(job);
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error resolving variables: {ex.Message}";
            _logger.LogError(ex, "Failed to resolve job variables");
            return [];
        }
    }
}
