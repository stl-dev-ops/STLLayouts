using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.OfficeGen;

public class WordDocumentGenerator : IDocumentGenerator
{
    public bool SupportsFormat(string fileExtension)
    {
        return fileExtension.Equals(".docx", StringComparison.OrdinalIgnoreCase);
    }

    public async Task<GeneratedDocument> GenerateAsync(
        Template template,
        Dictionary<string, object> variables,
        DocumentGenerationOptions options)
    {
        var startTime = DateTime.Now;
        var warnings = new List<string>();
        var populatedVariables = new Dictionary<string, object>();

        // Generate unique filename
        var timestamp = DateTime.Now.ToString("yyyyMMdd_HHmmss");
        var fileName = $"{Path.GetFileNameWithoutExtension(template.TemplateName)}_{timestamp}.docx";
        var outputPath = Path.Combine(options.OutputPath, fileName);

        // Create output directory if it doesn't exist
        Directory.CreateDirectory(options.OutputPath);

        // Copy template to output location
        File.Copy(template.FilePath, outputPath, true);

        // Open and process the document
        await Task.Run(() =>
        {
            using var wordDoc = WordprocessingDocument.Open(outputPath, true);
            var body = wordDoc.MainDocumentPart?.Document.Body;

            if (body == null)
            {
                warnings.Add("Document body is null");
                return;
            }

            // Process each paragraph to handle text that may be split across multiple runs
            foreach (var paragraph in body.Descendants<Paragraph>())
            {
                // Get all text in the paragraph
                var paragraphText = string.Concat(paragraph.Descendants<Text>().Select(t => t.Text));
                
                // Check if paragraph contains any placeholders
                var containsPlaceholder = false;
                var replacedText = paragraphText;
                
                foreach (var variable in variables)
                {
                    var placeholder = $"{{{{{variable.Key}}}}}"; // {{VariableName}}
                    
                    if (replacedText.Contains(placeholder))
                    {
                        replacedText = replacedText.Replace(placeholder, variable.Value?.ToString() ?? options.MissingVariablePlaceholder);
                        populatedVariables[variable.Key] = variable.Value ?? options.MissingVariablePlaceholder;
                        containsPlaceholder = true;
                    }
                }
                
                // If we replaced anything, update the paragraph
                if (containsPlaceholder && paragraphText != replacedText)
                {
                    // Remove all existing text elements
                    var textElements = paragraph.Descendants<Text>().ToList();
                    foreach (var text in textElements)
                    {
                        text.Remove();
                    }
                    
                    // Create a new run with the replaced text
                    var run = paragraph.Descendants<Run>().FirstOrDefault();
                    if (run == null)
                    {
                        run = new Run();
                        paragraph.AppendChild(run);
                    }
                    
                    run.AppendChild(new Text(replacedText));
                }
            }

            // Save changes
            wordDoc.MainDocumentPart?.Document.Save();
        });

        var fileInfo = new FileInfo(outputPath);
        var duration = DateTime.Now - startTime;

        return new GeneratedDocument
        {
            FilePath = outputPath,
            FileName = fileName,
            FileSizeBytes = fileInfo.Length,
            GenerationDuration = duration,
            Warnings = warnings,
            PopulatedVariables = populatedVariables
        };
    }
}
