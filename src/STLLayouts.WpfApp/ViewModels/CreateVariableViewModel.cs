using System.Collections.ObjectModel;
using System.Windows.Input;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;
using STLLayouts.WpfApp.Commands;

namespace STLLayouts.WpfApp.ViewModels;

public class CreateVariableViewModel : ViewModelBase
{
    private readonly IVariableMappingService _variableMappingService;
    private readonly IContextSchemaService _contextSchemaService;
    private readonly ILogger<CreateVariableViewModel> _logger;

    private string _variableName = string.Empty;
    private string _databaseField = string.Empty;
    private string _sqlExpression = string.Empty;
    private string _dataType = "String";
    private string _category = "Job";
    private string _description = string.Empty;
    private string _defaultValue = string.Empty;
    private bool _isRequired;

    private MappingKind _mappingKind = MappingKind.Single;
    private string _collectionName = string.Empty;
    private bool _isAdvanced;
    private string _selectedFieldKey = string.Empty;

    public event EventHandler? CloseRequested;

    public CreateVariableViewModel(
        IVariableMappingService variableMappingService,
        IContextSchemaService contextSchemaService,
        ILogger<CreateVariableViewModel> logger)
    {
        _variableMappingService = variableMappingService ?? throw new ArgumentNullException(nameof(variableMappingService));
        _contextSchemaService = contextSchemaService ?? throw new ArgumentNullException(nameof(contextSchemaService));
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));

        AvailableFields = [];
        AvailableCollections = ["OrderLines", "Reservations"];

        CreateCommand = new AsyncRelayCommand(async _ => await CreateVariableAsync(), _ => !string.IsNullOrWhiteSpace(VariableName));

        // fire-and-forget initial load
        _ = RefreshAvailableFieldsAsync();
    }

    public MappingKind MappingKind
    {
        get => _mappingKind;
        set
        {
            if (SetProperty(ref _mappingKind, value))
            {
                SelectedFieldKey = string.Empty;
                if (MappingKind != MappingKind.List)
                {
                    CollectionName = string.Empty;
                }

                OnPropertyChanged(nameof(IsCollectionSelectorVisible));
                _ = RefreshAvailableFieldsAsync();
                UpdateDatabaseFieldFromPicker();
            }
        }
    }

    public bool IsCollectionSelectorVisible => MappingKind == MappingKind.List;

    public ObservableCollection<string> AvailableCollections { get; }

    public string CollectionName
    {
        get => _collectionName;
        set
        {
            if (SetProperty(ref _collectionName, value))
            {
                SelectedFieldKey = string.Empty;
                _ = RefreshAvailableFieldsAsync();
                UpdateDatabaseFieldFromPicker();
            }
        }
    }

    public bool IsAdvanced
    {
        get => _isAdvanced;
        set
        {
            if (SetProperty(ref _isAdvanced, value))
            {
                UpdateDatabaseFieldFromPicker();
            }
        }
    }

    public bool IsDatabaseFieldReadOnly => !IsAdvanced;

    public ObservableCollection<string> AvailableFields { get; }

    public string SelectedFieldKey
    {
        get => _selectedFieldKey;
        set
        {
            if (SetProperty(ref _selectedFieldKey, value))
            {
                UpdateDatabaseFieldFromPicker();
            }
        }
    }

    public string VariableName
    {
        get => _variableName;
        set => SetProperty(ref _variableName, value);
    }

    public string DatabaseField
    {
        get => _databaseField;
        set => SetProperty(ref _databaseField, value);
    }

    public string SqlExpression
    {
        get => _sqlExpression;
        set => SetProperty(ref _sqlExpression, value);
    }

    public string DataType
    {
        get => _dataType;
        set => SetProperty(ref _dataType, value);
    }

    public string Category
    {
        get => _category;
        set => SetProperty(ref _category, value);
    }

    public string Description
    {
        get => _description;
        set => SetProperty(ref _description, value);
    }

    public string DefaultValue
    {
        get => _defaultValue;
        set => SetProperty(ref _defaultValue, value);
    }

    public bool IsRequired
    {
        get => _isRequired;
        set => SetProperty(ref _isRequired, value);
    }

    public ICommand CreateCommand { get; }

    private async Task RefreshAvailableFieldsAsync()
    {
        try
        {
            IReadOnlyList<ContextFieldInfo> fields;

            if (MappingKind == MappingKind.Single)
            {
                fields = await _contextSchemaService.GetScalarFieldsAsync();
            }
            else
            {
                fields = await _contextSchemaService.GetCollectionFieldsAsync(CollectionName);
            }

            var names = fields
                .Select(f => f.Name)
                .Where(n => !string.IsNullOrWhiteSpace(n))
                .Distinct(StringComparer.OrdinalIgnoreCase)
                .OrderBy(n => n)
                .ToList();

            AvailableFields.Clear();
            foreach (var name in names)
            {
                AvailableFields.Add(name);
            }
        }
        catch (Exception ex)
        {
            // Don't crash the dialog if schema lookup fails.
            _logger.LogWarning(ex, "Failed to load available fields for MappingKind={MappingKind}, Collection={CollectionName}", MappingKind, CollectionName);
            AvailableFields.Clear();
        }
    }

    private void UpdateDatabaseFieldFromPicker()
    {
        if (IsAdvanced)
        {
            OnPropertyChanged(nameof(IsDatabaseFieldReadOnly));
            return;
        }

        if (string.IsNullOrWhiteSpace(SelectedFieldKey))
        {
            DatabaseField = string.Empty;
            OnPropertyChanged(nameof(IsDatabaseFieldReadOnly));
            return;
        }

        DatabaseField = MappingKind == MappingKind.List && !string.IsNullOrWhiteSpace(CollectionName)
            ? $"{CollectionName.Trim()}.{SelectedFieldKey.Trim()}"
            : SelectedFieldKey.Trim();

        OnPropertyChanged(nameof(IsDatabaseFieldReadOnly));
    }

    private async Task CreateVariableAsync()
    {
        try
        {
            _logger.LogInformation("Creating new variable mapping: {VariableName}", VariableName);

            var mapping = new VariableMapping
            {
                VariableMappingId = Guid.NewGuid(),
                VariableName = VariableName.Trim(),
                DatabaseField = string.IsNullOrWhiteSpace(DatabaseField) ? null : DatabaseField.Trim(),
                SqlExpression = string.IsNullOrWhiteSpace(SqlExpression) ? null : SqlExpression.Trim(),
                MappingKind = MappingKind,
                CollectionName = MappingKind == MappingKind.List && !string.IsNullOrWhiteSpace(CollectionName) ? CollectionName.Trim() : null,
                FieldKey = !string.IsNullOrWhiteSpace(SelectedFieldKey) ? SelectedFieldKey.Trim() : null,
                DataType = DataType ?? "String",
                Category = Category ?? "Other",
                Description = string.IsNullOrWhiteSpace(Description) ? string.Empty : Description.Trim(),
                DefaultValue = string.IsNullOrWhiteSpace(DefaultValue) ? null : DefaultValue.Trim(),
                IsRequired = IsRequired,
                CreatedBy = Environment.UserName ?? "System",
                CreatedDate = DateTime.Now
            };

            await _variableMappingService.CreateMappingAsync(mapping);

            _logger.LogInformation("Variable mapping created successfully: {VariableName}", VariableName);
            CloseRequested?.Invoke(this, EventArgs.Empty);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to create variable mapping: {VariableName}", VariableName);
            throw;
        }
    }
}
