using System.Windows.Input;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;
using STLLayouts.WpfApp.Commands;

namespace STLLayouts.WpfApp.ViewModels;

public class CreateVariableViewModel : ViewModelBase
{
    private readonly IVariableMappingService _variableMappingService;
    private readonly ILogger<CreateVariableViewModel> _logger;

    private string _variableName = string.Empty;
    private string _databaseField = string.Empty;
    private string _sqlExpression = string.Empty;
    private string _dataType = "String";
    private string _category = "Job";
    private string _description = string.Empty;
    private string _defaultValue = string.Empty;
    private bool _isRequired;

    public event EventHandler? CloseRequested;

    public CreateVariableViewModel(
        IVariableMappingService variableMappingService,
        ILogger<CreateVariableViewModel> logger)
    {
        _variableMappingService = variableMappingService ?? throw new ArgumentNullException(nameof(variableMappingService));
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));

        CreateCommand = new AsyncRelayCommand(async _ => await CreateVariableAsync(), _ => !string.IsNullOrWhiteSpace(VariableName));
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
