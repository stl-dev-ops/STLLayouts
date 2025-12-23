using System.Collections.ObjectModel;
using System.Windows.Input;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;
using STLLayouts.WpfApp.Commands;

namespace STLLayouts.WpfApp.ViewModels;

/// <summary>
/// ViewModel for document preview and generation results.
/// Displays generated documents and their metadata.
/// </summary>
public class DocumentPreviewViewModel : ViewModelBase
{
    private readonly IDocumentGenerationService _documentGenerationService;
    private readonly ILogger<DocumentPreviewViewModel> _logger;

    private GeneratedDocument? _selectedDocument;
    private bool _isLoading;
    private string _statusMessage = string.Empty;

    public DocumentPreviewViewModel(
        IDocumentGenerationService documentGenerationService,
        ILogger<DocumentPreviewViewModel> logger)
    {
        _documentGenerationService = documentGenerationService ?? throw new ArgumentNullException(nameof(documentGenerationService));
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));

        GeneratedDocuments = new ObservableCollection<GeneratedDocument>();
        PopulatedVariables = new ObservableCollection<KeyValuePair<string, object>>();

        OpenDocumentCommand = new RelayCommand(_ => OpenSelectedDocument(), _ => SelectedDocument != null);
        CopyPathCommand = new RelayCommand(_ => CopyDocumentPath(), _ => SelectedDocument != null);
        ExportMetadataCommand = new RelayCommand(_ => ExportDocumentMetadata(), _ => SelectedDocument != null);
    }

    public ObservableCollection<GeneratedDocument> GeneratedDocuments { get; }
    public ObservableCollection<KeyValuePair<string, object>> PopulatedVariables { get; }

    public GeneratedDocument? SelectedDocument
    {
        get => _selectedDocument;
        set
        {
            if (SetProperty(ref _selectedDocument, value))
            {
                DisplayDocumentDetails();
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

    public ICommand OpenDocumentCommand { get; }
    public ICommand CopyPathCommand { get; }
    public ICommand ExportMetadataCommand { get; }

    /// <summary>
    /// Adds a newly generated document to the collection.
    /// </summary>
    public void AddGeneratedDocument(GeneratedDocument document)
    {
        if (document == null)
        {
            _logger.LogWarning("AddGeneratedDocument called with null document");
            return;
        }

        GeneratedDocuments.Insert(0, document);
        SelectedDocument = document;

        StatusMessage = $"Generated: {document.FileName} ({FormatFileSize(document.FileSizeBytes)})";
        _logger.LogInformation("Added generated document: {FileName}", document.FileName);
    }

    /// <summary>
    /// Adds multiple generated documents from batch generation.
    /// </summary>
    public void AddGeneratedDocuments(List<GeneratedDocument> documents)
    {
        if (documents == null || documents.Count == 0)
        {
            _logger.LogWarning("AddGeneratedDocuments called with null or empty list");
            return;
        }

        _logger.LogInformation("Adding {DocumentCount} generated documents", documents.Count);

        foreach (var document in documents)
        {
            GeneratedDocuments.Insert(0, document);
        }

        SelectedDocument = documents.FirstOrDefault();
        StatusMessage = $"Generated {documents.Count} document(s)";
    }

    /// <summary>
    /// Clears all generated documents from the collection.
    /// </summary>
    public void ClearDocuments()
    {
        GeneratedDocuments.Clear();
        PopulatedVariables.Clear();
        SelectedDocument = null;
        StatusMessage = "Cleared document history";
        _logger.LogInformation("Cleared all generated documents");
    }

    private void DisplayDocumentDetails()
    {
        PopulatedVariables.Clear();

        if (SelectedDocument == null)
            return;

        _logger.LogDebug("Displaying details for document: {FileName}", SelectedDocument.FileName);

        // Populate variables collection
        foreach (var variable in SelectedDocument.PopulatedVariables.OrderBy(v => v.Key))
        {
            PopulatedVariables.Add(variable);
        }

        // Log warnings if any
        if (SelectedDocument.Warnings.Count > 0)
        {
            _logger.LogWarning("Document has {WarningCount} warning(s)", SelectedDocument.Warnings.Count);
        }
    }

    private void OpenSelectedDocument()
    {
        if (SelectedDocument == null || string.IsNullOrWhiteSpace(SelectedDocument.FilePath))
        {
            StatusMessage = "No document selected or file path is empty";
            return;
        }

        try
        {
            _logger.LogInformation("Opening document: {FilePath}", SelectedDocument.FilePath);

            if (!System.IO.File.Exists(SelectedDocument.FilePath))
            {
                StatusMessage = $"File not found: {SelectedDocument.FilePath}";
                _logger.LogWarning("Document file not found: {FilePath}", SelectedDocument.FilePath);
                return;
            }

            // Open with default application
            System.Diagnostics.ProcessStartInfo psi = new()
            {
                FileName = SelectedDocument.FilePath,
                UseShellExecute = true
            };
            System.Diagnostics.Process.Start(psi);

            StatusMessage = "Document opened";
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error opening document: {ex.Message}";
            _logger.LogError(ex, "Failed to open document: {FilePath}", SelectedDocument.FilePath);
        }
    }

    private void CopyDocumentPath()
    {
        if (SelectedDocument == null || string.IsNullOrWhiteSpace(SelectedDocument.FilePath))
        {
            StatusMessage = "No file path to copy";
            return;
        }

        try
        {
            System.Windows.Clipboard.SetText(SelectedDocument.FilePath);
            StatusMessage = "File path copied to clipboard";
            _logger.LogInformation("Copied file path to clipboard: {FilePath}", SelectedDocument.FilePath);
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error copying path: {ex.Message}";
            _logger.LogError(ex, "Failed to copy file path to clipboard");
        }
    }

    private void ExportDocumentMetadata()
    {
        if (SelectedDocument == null)
        {
            StatusMessage = "No document selected";
            return;
        }

        try
        {
            var metadata = new
            {
                SelectedDocument.FileName,
                SelectedDocument.FilePath,
                FileSizeKB = SelectedDocument.FileSizeBytes / 1024.0,
                DurationMs = SelectedDocument.GenerationDuration.TotalMilliseconds,
                VariableCount = SelectedDocument.PopulatedVariables.Count,
                WarningCount = SelectedDocument.Warnings.Count,
                Warnings = SelectedDocument.Warnings,
                Variables = SelectedDocument.PopulatedVariables
            };

            var json = System.Text.Json.JsonSerializer.Serialize(metadata, new System.Text.Json.JsonSerializerOptions { WriteIndented = true });

            var outputPath = System.IO.Path.Combine(
                System.IO.Path.GetDirectoryName(SelectedDocument.FilePath) ?? string.Empty,
                $"{System.IO.Path.GetFileNameWithoutExtension(SelectedDocument.FileName)}_metadata.json");

            System.IO.File.WriteAllText(outputPath, json);
            StatusMessage = $"Metadata exported to: {outputPath}";
            _logger.LogInformation("Exported document metadata to: {OutputPath}", outputPath);
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error exporting metadata: {ex.Message}";
            _logger.LogError(ex, "Failed to export document metadata");
        }
    }

    private string FormatFileSize(long bytes)
    {
        return bytes switch
        {
            < 1024 => $"{bytes}B",
            < 1024 * 1024 => $"{bytes / 1024.0:F2}KB",
            _ => $"{bytes / (1024.0 * 1024.0):F2}MB"
        };
    }
}
