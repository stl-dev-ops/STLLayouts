using System.Collections.ObjectModel;
using System.Windows.Input;
using Microsoft.Extensions.Logging;
using STLLayouts.WpfApp.Commands;

namespace STLLayouts.WpfApp.ViewModels;

/// <summary>
/// ViewModel for application settings and configuration.
/// Manages user preferences, output paths, and generation options.
/// </summary>
public class SettingsViewModel : ViewModelBase
{
    private readonly ILogger<SettingsViewModel> _logger;

    private string _outputPath = string.Empty;
    private string _templatePath = string.Empty;
    private bool _convertToPdf;
    private bool _preserveFormatting = true;
    private bool _failOnMissingVariable;
    private string _missingVariablePlaceholder = "[NOT FOUND]";
    private int _logLevel = 2; // Information
    private bool _autoLoadTemplates = true;
    private string _statusMessage = string.Empty;

    public SettingsViewModel(ILogger<SettingsViewModel> logger)
    {
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));

        LogLevels = new ObservableCollection<string> { "Debug", "Information", "Warning", "Error" };

        BrowseOutputPathCommand = new RelayCommand(_ => BrowseFolder(nameof(OutputPath)));
        BrowseTemplatePathCommand = new RelayCommand(_ => BrowseFolder(nameof(TemplatePath)));
        SaveSettingsCommand = new RelayCommand(_ => SaveSettings());
        ResetSettingsCommand = new RelayCommand(_ => ResetSettings());
    }

    public ObservableCollection<string> LogLevels { get; }

    public string OutputPath
    {
        get => _outputPath;
        set => SetProperty(ref _outputPath, value);
    }

    public string TemplatePath
    {
        get => _templatePath;
        set => SetProperty(ref _templatePath, value);
    }

    public bool ConvertToPdf
    {
        get => _convertToPdf;
        set => SetProperty(ref _convertToPdf, value);
    }

    public bool PreserveFormatting
    {
        get => _preserveFormatting;
        set => SetProperty(ref _preserveFormatting, value);
    }

    public bool FailOnMissingVariable
    {
        get => _failOnMissingVariable;
        set => SetProperty(ref _failOnMissingVariable, value);
    }

    public string MissingVariablePlaceholder
    {
        get => _missingVariablePlaceholder;
        set => SetProperty(ref _missingVariablePlaceholder, value ?? "[NOT FOUND]");
    }

    public int LogLevel
    {
        get => _logLevel;
        set => SetProperty(ref _logLevel, value);
    }

    public bool AutoLoadTemplates
    {
        get => _autoLoadTemplates;
        set => SetProperty(ref _autoLoadTemplates, value);
    }

    public string StatusMessage
    {
        get => _statusMessage;
        set => SetProperty(ref _statusMessage, value);
    }

    public ICommand BrowseOutputPathCommand { get; }
    public ICommand BrowseTemplatePathCommand { get; }
    public ICommand SaveSettingsCommand { get; }
    public ICommand ResetSettingsCommand { get; }

    public void LoadSettings()
    {
        try
        {
            _logger.LogInformation("Loading application settings");

            // Load from configuration or user preferences
            // This is a placeholder - integrate with actual settings storage
            OutputPath = System.IO.Path.Combine(
                System.Environment.GetFolderPath(System.Environment.SpecialFolder.MyDocuments),
                "STL Layouts", "Output");

            TemplatePath = System.IO.Path.Combine(
                System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location) ?? string.Empty,
                "Templates");

            StatusMessage = "Settings loaded successfully";
            _logger.LogInformation("Settings loaded: Output={OutputPath}, Templates={TemplatePath}",
                OutputPath, TemplatePath);
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error loading settings: {ex.Message}";
            _logger.LogError(ex, "Failed to load settings");
        }
    }

    public void SaveSettings()
    {
        try
        {
            // Validate paths
            if (string.IsNullOrWhiteSpace(OutputPath))
            {
                StatusMessage = "Output path cannot be empty";
                _logger.LogWarning("SaveSettings: Output path is empty");
                return;
            }

            _logger.LogInformation("Saving application settings");

            // Create directories if they don't exist
            System.IO.Directory.CreateDirectory(OutputPath);
            if (!string.IsNullOrWhiteSpace(TemplatePath))
            {
                System.IO.Directory.CreateDirectory(TemplatePath);
            }

            // Save to configuration or user preferences
            // This is a placeholder - integrate with actual settings storage

            StatusMessage = "Settings saved successfully";
            _logger.LogInformation("Settings saved successfully");
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error saving settings: {ex.Message}";
            _logger.LogError(ex, "Failed to save settings");
        }
    }

    public void ResetSettings()
    {
        try
        {
            _logger.LogInformation("Resetting settings to defaults");

            OutputPath = System.IO.Path.Combine(
                System.Environment.GetFolderPath(System.Environment.SpecialFolder.MyDocuments),
                "STL Layouts", "Output");

            TemplatePath = System.IO.Path.Combine(
                System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location) ?? string.Empty,
                "Templates");

            ConvertToPdf = false;
            PreserveFormatting = true;
            FailOnMissingVariable = false;
            MissingVariablePlaceholder = "[NOT FOUND]";
            LogLevel = 2; // Information
            AutoLoadTemplates = true;

            StatusMessage = "Settings reset to defaults";
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error resetting settings: {ex.Message}";
            _logger.LogError(ex, "Failed to reset settings");
        }
    }

    private void BrowseFolder(string propertyName)
    {
        try
        {
            // This would typically show a folder browser dialog
            // For now, just log the request
            _logger.LogInformation("Browse folder requested for: {PropertyName}", propertyName);
            StatusMessage = $"Browse folder for {propertyName}";

            // TODO: Implement actual folder browser dialog using Windows.Storage or similar
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error browsing folder: {ex.Message}";
            _logger.LogError(ex, "Failed to browse folder");
        }
    }

    /// <summary>
    /// Exports current settings to a JSON file for sharing.
    /// </summary>
    public void ExportSettings(string filePath)
    {
        try
        {
            var settings = new
            {
                OutputPath,
                TemplatePath,
                ConvertToPdf,
                PreserveFormatting,
                FailOnMissingVariable,
                MissingVariablePlaceholder,
                LogLevel,
                AutoLoadTemplates,
                ExportedAt = System.DateTime.UtcNow
            };

            var json = System.Text.Json.JsonSerializer.Serialize(settings, 
                new System.Text.Json.JsonSerializerOptions { WriteIndented = true });

            System.IO.File.WriteAllText(filePath, json);
            StatusMessage = $"Settings exported to: {filePath}";
            _logger.LogInformation("Settings exported to: {FilePath}", filePath);
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error exporting settings: {ex.Message}";
            _logger.LogError(ex, "Failed to export settings");
        }
    }

    /// <summary>
    /// Imports settings from a JSON file.
    /// </summary>
    public void ImportSettings(string filePath)
    {
        try
        {
            if (!System.IO.File.Exists(filePath))
            {
                StatusMessage = $"Settings file not found: {filePath}";
                _logger.LogWarning("Settings file not found: {FilePath}", filePath);
                return;
            }

            var json = System.IO.File.ReadAllText(filePath);
            var settings = System.Text.Json.JsonSerializer.Deserialize<System.Text.Json.JsonElement>(json);

            if (settings.ValueKind == System.Text.Json.JsonValueKind.Object)
            {
                if (settings.TryGetProperty("OutputPath", out var outputPath))
                    OutputPath = outputPath.GetString() ?? string.Empty;

                if (settings.TryGetProperty("TemplatePath", out var templatePath))
                    TemplatePath = templatePath.GetString() ?? string.Empty;

                if (settings.TryGetProperty("ConvertToPdf", out var convertToPdf))
                    ConvertToPdf = convertToPdf.GetBoolean();

                if (settings.TryGetProperty("PreserveFormatting", out var preserveFormatting))
                    PreserveFormatting = preserveFormatting.GetBoolean();

                if (settings.TryGetProperty("FailOnMissingVariable", out var failOnMissing))
                    FailOnMissingVariable = failOnMissing.GetBoolean();

                if (settings.TryGetProperty("MissingVariablePlaceholder", out var placeholder))
                    MissingVariablePlaceholder = placeholder.GetString() ?? "[NOT FOUND]";

                if (settings.TryGetProperty("LogLevel", out var logLevel))
                    LogLevel = logLevel.GetInt32();

                if (settings.TryGetProperty("AutoLoadTemplates", out var autoLoad))
                    AutoLoadTemplates = autoLoad.GetBoolean();
            }

            StatusMessage = $"Settings imported successfully";
            _logger.LogInformation("Settings imported from: {FilePath}", filePath);
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error importing settings: {ex.Message}";
            _logger.LogError(ex, "Failed to import settings");
        }
    }
}
