using STLLayouts.Core.Entities;

namespace STLLayouts.Core.Interfaces;

public class DocumentGenerationOptions
{
    public bool ConvertToPdf { get; set; }
    public string OutputPath { get; set; } = string.Empty;
    public bool PreserveFormatting { get; set; } = true;
    public bool FailOnMissingVariable { get; set; } = false;
    public string MissingVariablePlaceholder { get; set; } = "[NOT FOUND]";
}

public class GeneratedDocument
{
    public string FilePath { get; set; } = string.Empty;
    public string FileName { get; set; } = string.Empty;
    public long FileSizeBytes { get; set; }
    public TimeSpan GenerationDuration { get; set; }
    public List<string> Warnings { get; set; } = new();
    public Dictionary<string, object> PopulatedVariables { get; set; } = new();
}

public interface IDocumentGenerator
{
    Task<GeneratedDocument> GenerateAsync(
        Template template,
        Dictionary<string, object> variables,
        DocumentGenerationOptions options);

    bool SupportsFormat(string fileExtension);
}
