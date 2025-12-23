using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.Services;

public class DocumentGenerationService : IDocumentGenerationService
{
    private readonly IVariableMappingService _variableMappingService;
    private readonly ITemplateService _templateService;
    private readonly IRuleEngineService _ruleEngineService;
    private readonly IEnumerable<IDocumentGenerator> _documentGenerators;
    private readonly ILogger<DocumentGenerationService> _logger;
    private readonly IConfiguration _configuration;

    public DocumentGenerationService(
        IVariableMappingService variableMappingService,
        ITemplateService templateService,
        IRuleEngineService ruleEngineService,
        IEnumerable<IDocumentGenerator> documentGenerators,
        ILogger<DocumentGenerationService> logger,
        IConfiguration configuration)
    {
        _variableMappingService = variableMappingService ?? throw new ArgumentNullException(nameof(variableMappingService));
        _templateService = templateService ?? throw new ArgumentNullException(nameof(templateService));
        _ruleEngineService = ruleEngineService ?? throw new ArgumentNullException(nameof(ruleEngineService));
        _documentGenerators = documentGenerators ?? throw new ArgumentNullException(nameof(documentGenerators));
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));
        _configuration = configuration ?? throw new ArgumentNullException(nameof(configuration));
    }

    [System.Runtime.Versioning.SupportedOSPlatform("windows")]
    public async Task<GeneratedDocument> GenerateDocumentAsync(
        Job job,
        Template template,
        DocumentGenerationOptions options)
    {
        if (job == null)
        {
            _logger.LogError("GenerateDocumentAsync called with null job");
            throw new ArgumentNullException(nameof(job));
        }

        if (template == null)
        {
            _logger.LogError("GenerateDocumentAsync called with null template");
            throw new ArgumentNullException(nameof(template));
        }

        if (options == null)
        {
            _logger.LogError("GenerateDocumentAsync called with null options");
            throw new ArgumentNullException(nameof(options));
        }

        var stopwatch = System.Diagnostics.Stopwatch.StartNew();

        try
        {
            _logger.LogInformation("Starting document generation for job {JobNumber} using template {TemplateName}",
                job.JobNumber, template.TemplateName);

            // Step 1: Apply rules to enrich job context
            _logger.LogDebug("Evaluating rules for job {JobNumber}", job.JobNumber);
            await _ruleEngineService.EvaluateRulesAsync(job);

            // Step 2: Resolve all variables for the job
            _logger.LogDebug("Resolving variables for job {JobNumber}", job.JobNumber);
            var variables = await _variableMappingService.ResolveVariablesAsync(job);

            // Step 3: Find appropriate generator for template format
            var generator = FindGeneratorForTemplate(template);
            if (generator == null)
            {
                _logger.LogError("No document generator found for template format: {FileExtension}",
                    template.FileExtension);
                throw new InvalidOperationException(
                    $"No document generator available for format: {template.FileExtension}");
            }

            // Step 4: Generate the document
            _logger.LogDebug("Generating document using generator for format: {FileExtension}",
                template.FileExtension);
            var document = await generator.GenerateAsync(template, variables, options);

            // Optional: enforce PDF-only output by converting generated file
            if (options.ConvertToPdf)
            {
                try
                {
                    var pdfPath = await ConvertToPdfAsync(document.FilePath, options.OutputPath);
                    document.FilePath = pdfPath;
                    document.FileName = System.IO.Path.GetFileName(pdfPath);
                }
                catch (Exception ex)
                {
                    _logger.LogError(ex, "PDF conversion failed for {FilePath}", document.FilePath);
                    throw;
                }
            }

            // Step 5: Save to network storage with timestamped backup if needed
            await SaveToNetworkStorageAsync(document, job);

            stopwatch.Stop();
            document.GenerationDuration = stopwatch.Elapsed;
            document.PopulatedVariables = variables;

            _logger.LogInformation("Document generated successfully for job {JobNumber} in {Duration}ms",
                job.JobNumber, stopwatch.ElapsedMilliseconds);

            return document;
        }
        catch (Exception ex)
        {
            stopwatch.Stop();
            _logger.LogError(ex, "Document generation failed for job {JobNumber} after {Duration}ms",
                job.JobNumber, stopwatch.ElapsedMilliseconds);
            throw;
        }
    }

    [System.Runtime.Versioning.SupportedOSPlatform("windows")]
    public async Task<List<GeneratedDocument>> GenerateDocumentsAsync(
        Job job,
        List<Template> templates,
        DocumentGenerationOptions options)
    {
        if (job == null)
        {
            _logger.LogError("GenerateDocumentsAsync called with null job");
            throw new ArgumentNullException(nameof(job));
        }

        if (templates == null || templates.Count == 0)
        {
            _logger.LogWarning("GenerateDocumentsAsync called with null or empty template list");
            throw new ArgumentException("At least one template must be provided", nameof(templates));
        }

        if (options == null)
        {
            _logger.LogError("GenerateDocumentsAsync called with null options");
            throw new ArgumentNullException(nameof(options));
        }

        _logger.LogInformation("Starting batch document generation for job {JobNumber} with {TemplateCount} templates",
            job.JobNumber, templates.Count);

        var results = new List<GeneratedDocument>();
        var errors = new List<(Template, Exception)>();
        var pdfFiles = new List<string>(); // Track PDF files for merging

        // Process templates sequentially to avoid resource contention
        foreach (var template in templates)
        {
            try
            {
                _logger.LogDebug("Processing template {TemplateName} for job {JobNumber}",
                    template.TemplateName, job.JobNumber);

                var document = await GenerateDocumentAsync(job, template, options);
                results.Add(document);
                
                // If PDF was generated, add to merge list
                if (options.ConvertToPdf && document.FilePath.EndsWith(".pdf", StringComparison.OrdinalIgnoreCase))
                {
                    pdfFiles.Add(document.FilePath);
                }

                _logger.LogInformation("Successfully generated document from template {TemplateName}",
                    template.TemplateName);
            }
            catch (Exception ex)
            {
                _logger.LogWarning(ex, "Failed to generate document from template {TemplateName} for job {JobNumber}",
                    template.TemplateName, job.JobNumber);
                errors.Add((template, ex));
            }
        }

        // If multiple PDFs were generated, merge them
        if (pdfFiles.Count > 1 && options.ConvertToPdf)
        {
            try
            {
                _logger.LogInformation("Merging {Count} PDFs for job {JobNumber}", pdfFiles.Count, job.JobNumber);
                var mergedPath = await MergePdfsAsync(pdfFiles, job.JobNumber, options.OutputPath);
                
                // Create single result for merged PDF
                var mergedFileInfo = new FileInfo(mergedPath);
                var mergedDocument = new GeneratedDocument
                {
                    FilePath = mergedPath,
                    FileName = Path.GetFileName(mergedPath),
                    FileSizeBytes = mergedFileInfo.Length,
                    GenerationDuration = TimeSpan.Zero,
                    Warnings = new List<string>(),
                    PopulatedVariables = new Dictionary<string, object>()
                };
                
                // Save merged PDF to network storage
                await SaveToNetworkStorageAsync(mergedDocument, job);
                
                // Clean up individual temp PDFs
                foreach (var pdfFile in pdfFiles)
                {
                    try
                    {
                        if (File.Exists(pdfFile))
                        {
                            File.Delete(pdfFile);
                            _logger.LogDebug("Deleted temp PDF: {PdfFile}", pdfFile);
                        }
                    }
                    catch (Exception deleteEx)
                    {
                        _logger.LogWarning(deleteEx, "Failed to delete temp PDF: {PdfFile}", pdfFile);
                    }
                }
                
                // Replace results with merged document
                results.Clear();
                results.Add(mergedDocument);
                
                _logger.LogInformation("Successfully merged {Count} PDFs into {MergedPath}", pdfFiles.Count, mergedPath);
            }
            catch (Exception ex)
            {
                _logger.LogWarning(ex, "Failed to merge PDFs for job {JobNumber}, using individual PDFs", job.JobNumber);
                // Continue with individual PDFs if merge fails
            }
        }

        if (errors.Count > 0)
        {
            var errorSummary = string.Join("; ", errors.Select(e => $"{e.Item1.TemplateName}: {e.Item2.Message}"));
            _logger.LogWarning("Batch generation completed with {SuccessCount} successes and {ErrorCount} failures: {ErrorSummary}",
                results.Count, errors.Count, errorSummary);

            if (results.Count == 0)
            {
                throw new InvalidOperationException(
                    $"All {templates.Count} document generation operations failed. Details: {errorSummary}");
            }
        }
        else
        {
            _logger.LogInformation("Batch document generation completed successfully for {TemplateCount} templates",
                templates.Count);
        }

        return results;
    }

    public Task<GeneratedDocument> RegenerateDocumentAsync(
        string filePath,
        Dictionary<string, object> updatedVariables)
    {
        if (string.IsNullOrWhiteSpace(filePath))
        {
            _logger.LogError("RegenerateDocumentAsync called with null/empty file path");
            throw new ArgumentException("File path cannot be null or empty", nameof(filePath));
        }

        if (updatedVariables == null || updatedVariables.Count == 0)
        {
            _logger.LogWarning("RegenerateDocumentAsync called with null or empty variables");
            throw new ArgumentException("At least one variable must be provided", nameof(updatedVariables));
        }

        if (!File.Exists(filePath))
        {
            _logger.LogError("Document file not found: {FilePath}", filePath);
            throw new FileNotFoundException($"Document file not found: {filePath}", filePath);
        }

        _logger.LogInformation("Regenerating document at {FilePath} with {VariableCount} updated variables",
            filePath, updatedVariables.Count);

        // TODO: Implement regeneration logic
        // This would involve:
        // 1. Loading the original template metadata
        // 2. Extracting preserved formatting/structure
        // 3. Replacing variables with updated values
        // 4. Saving to the same location

        throw new NotImplementedException(
            "Document regeneration is not yet implemented. This feature requires template metadata tracking.");
    }

    /// <summary>
    /// Finds the appropriate document generator for a template based on file extension.
    /// </summary>
    private IDocumentGenerator? FindGeneratorForTemplate(Template template)
    {
        if (string.IsNullOrWhiteSpace(template.FileExtension))
        {
            _logger.LogWarning("Template {TemplateName} has no file extension", template.TemplateName);
            return null;
        }

        var extension = template.FileExtension.StartsWith(".")
            ? template.FileExtension
            : $".{template.FileExtension}";

        var generator = _documentGenerators.FirstOrDefault(g => g.SupportsFormat(extension));

        if (generator == null)
        {
            _logger.LogWarning("No generator found for template extension: {FileExtension}", extension);
        }

        return generator;
    }

    [System.Runtime.Versioning.SupportedOSPlatform("windows")]
    private Task<string> ConvertToPdfAsync(string inputFile, string outputDir)
    {
        System.IO.Directory.CreateDirectory(outputDir);

        var baseName = System.IO.Path.GetFileNameWithoutExtension(inputFile);
        var pdfPath = System.IO.Path.Combine(outputDir, baseName + ".pdf");
        var extension = System.IO.Path.GetExtension(inputFile).ToLowerInvariant();

        object? app = null;
        try
        {
            if (extension == ".docx" || extension == ".doc")
            {
                // Use Word via late-bound COM
                var wordType = Type.GetTypeFromProgID("Word.Application");
                if (wordType == null) throw new InvalidOperationException("Microsoft Word is not installed");
                
                app = Activator.CreateInstance(wordType);
                wordType.InvokeMember("Visible", System.Reflection.BindingFlags.SetProperty, null, app, new object[] { false });
                
                var documents = wordType.InvokeMember("Documents", System.Reflection.BindingFlags.GetProperty, null, app, null)!;
                var doc = documents.GetType().InvokeMember("Open", System.Reflection.BindingFlags.InvokeMethod, null, documents, new object[] { inputFile })!;
                
                // SaveAs2(FileName, FileFormat:=wdFormatPDF)
                doc.GetType().InvokeMember("SaveAs2", System.Reflection.BindingFlags.InvokeMethod, null, doc, new object[] { pdfPath, 17 }); // 17 = wdFormatPDF
                doc.GetType().InvokeMember("Close", System.Reflection.BindingFlags.InvokeMethod, null, doc, new object[] { false });
                wordType.InvokeMember("Quit", System.Reflection.BindingFlags.InvokeMethod, null, app, new object[] { false });
            }
            else if (extension == ".xlsx" || extension == ".xls")
            {
                // Use Excel via late-bound COM
                var excelType = Type.GetTypeFromProgID("Excel.Application");
                if (excelType == null) throw new InvalidOperationException("Microsoft Excel is not installed");
                
                app = Activator.CreateInstance(excelType);
                excelType.InvokeMember("Visible", System.Reflection.BindingFlags.SetProperty, null, app, new object[] { false });
                excelType.InvokeMember("DisplayAlerts", System.Reflection.BindingFlags.SetProperty, null, app, new object[] { false });
                
                var workbooks = excelType.InvokeMember("Workbooks", System.Reflection.BindingFlags.GetProperty, null, app, null)!;
                var workbook = workbooks.GetType().InvokeMember("Open", System.Reflection.BindingFlags.InvokeMethod, null, workbooks, new object[] { inputFile })!;
                
                // ExportAsFixedFormat(Type:=xlTypePDF, Filename:=pdfPath, Quality:=xlQualityStandard)
                workbook.GetType().InvokeMember("ExportAsFixedFormat", System.Reflection.BindingFlags.InvokeMethod, null, workbook, new object[] { 0, pdfPath, 0 }); // 0 = xlTypePDF, 0 = xlQualityStandard
                workbook.GetType().InvokeMember("Close", System.Reflection.BindingFlags.InvokeMethod, null, workbook, new object[] { false });
                excelType.InvokeMember("Quit", System.Reflection.BindingFlags.InvokeMethod, null, app, null);
            }
            else
            {
                throw new NotSupportedException($"PDF conversion not supported for file type: {extension}");
            }

            if (!System.IO.File.Exists(pdfPath))
            {
                throw new FileNotFoundException($"PDF conversion completed but file not found: {pdfPath}", pdfPath);
            }

            return Task.FromResult(pdfPath);
        }
        finally
        {
            // Release COM objects
            if (app != null)
            {
                System.Runtime.InteropServices.Marshal.ReleaseComObject(app);
            }
            GC.Collect();
            GC.WaitForPendingFinalizers();
        }
    }

    private Task SaveToNetworkStorageAsync(GeneratedDocument document, Job job)
    {
        try
        {
            var networkBasePath = _configuration["DocumentStorage:NetworkStoragePath"];
            if (string.IsNullOrWhiteSpace(networkBasePath))
            {
                _logger.LogWarning("NetworkStoragePath not configured, skipping network storage");
                return Task.CompletedTask;
            }

            // Extract first 3 digits from job number
            var jobNumber = job.JobNumber ?? string.Empty;
            if (jobNumber.Length < 3)
            {
                _logger.LogError("Job number too short to extract folder: {JobNumber}", jobNumber);
                return Task.CompletedTask;
            }

            var folderPrefix = jobNumber.Substring(0, 3);
            var jobFolder = System.IO.Path.Combine(networkBasePath, folderPrefix);

            // Create folder if it doesn't exist
            System.IO.Directory.CreateDirectory(jobFolder);
            _logger.LogInformation("Network storage folder created/verified: {JobFolder}", jobFolder);

            // Target path: Always save as PDF
            var fileName = $"{jobNumber}.pdf";
            var targetPath = System.IO.Path.Combine(jobFolder, fileName);

            // If file exists, create timestamped backup
            if (System.IO.File.Exists(targetPath))
            {
                var timestamp = DateTime.Now.ToString("yyyy-MM-dd-HHmmss");
                var backupName = $"{jobNumber}.pdf.{timestamp}.bak";
                var backupPath = System.IO.Path.Combine(jobFolder, backupName);
                System.IO.File.Move(targetPath, backupPath);
                _logger.LogInformation("Backed up existing PDF to: {BackupPath}", backupPath);
            }

            // Copy generated document to network path
            System.IO.File.Copy(document.FilePath, targetPath, overwrite: true);
            _logger.LogInformation("Document saved to network storage: {TargetPath}", targetPath);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to save document to network storage for job {JobNumber}", job.JobNumber);
            // Don't throw; allow document generation to succeed even if network save fails
        }

        return Task.CompletedTask;
    }

    private async Task<string> MergePdfsAsync(List<string> pdfFiles, string jobNumber, string outputPath)
    {
        var mergedFilePath = Path.Combine(outputPath, $"Merged_{jobNumber}.pdf");
        
        try
        {
            using (var writer = new iText.Kernel.Pdf.PdfWriter(mergedFilePath))
            {
                using (var pdf = new iText.Kernel.Pdf.PdfDocument(writer))
                {
                    foreach (var pdfFile in pdfFiles)
                    {
                        if (!File.Exists(pdfFile))
                        {
                            _logger.LogWarning("PDF file not found for merging: {PdfFile}", pdfFile);
                            continue;
                        }

                        using (var sourceReader = new iText.Kernel.Pdf.PdfReader(pdfFile))
                        {
                            using (var sourceDoc = new iText.Kernel.Pdf.PdfDocument(sourceReader))
                            {
                                sourceDoc.CopyPagesTo(1, sourceDoc.GetNumberOfPages(), pdf);
                            }
                        }
                    }
                }
            }

            return await Task.FromResult(mergedFilePath);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error merging PDFs for job {JobNumber}", jobNumber);
            throw;
        }
    }
}
