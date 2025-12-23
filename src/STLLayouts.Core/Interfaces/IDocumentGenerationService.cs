using STLLayouts.Core.Entities;

namespace STLLayouts.Core.Interfaces;

public interface IDocumentGenerationService
{
    Task<GeneratedDocument> GenerateDocumentAsync(
        Job job,
        Template template,
        DocumentGenerationOptions options);

    Task<List<GeneratedDocument>> GenerateDocumentsAsync(
        Job job,
        List<Template> templates,
        DocumentGenerationOptions options);

    Task<GeneratedDocument> RegenerateDocumentAsync(
        string filePath,
        Dictionary<string, object> updatedVariables);
}
