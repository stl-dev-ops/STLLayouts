using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Spreadsheet;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.OfficeGen;

public class ExcelDocumentGenerator : IDocumentGenerator
{
    public bool SupportsFormat(string fileExtension)
    {
        return fileExtension.Equals(".xlsx", StringComparison.OrdinalIgnoreCase);
    }

    public async Task<GeneratedDocument> GenerateAsync(
        Template template,
        Dictionary<string, object> variables,
        DocumentGenerationOptions options)
    {
        var startTime = DateTime.Now;
        var warnings = new List<string>();
        var populatedVariables = new Dictionary<string, object>();

        var timestamp = DateTime.Now.ToString("yyyyMMdd_HHmmss");
        var fileName = $"{Path.GetFileNameWithoutExtension(template.TemplateName)}_{timestamp}.xlsx";
        var outputPath = Path.Combine(options.OutputPath, fileName);
        Directory.CreateDirectory(options.OutputPath);

        File.Copy(template.FilePath, outputPath, true);

        await Task.Run(() =>
        {
            using var doc = SpreadsheetDocument.Open(outputPath, true);
            var workbookPart = doc.WorkbookPart;
            if (workbookPart == null)
            {
                warnings.Add("WorkbookPart is null");
                return;
            }

            foreach (var worksheetPart in workbookPart.WorksheetParts)
            {
                var sheetData = worksheetPart.Worksheet?.GetFirstChild<SheetData>();
                if (sheetData == null) continue;

                foreach (var row in sheetData.Elements<Row>())
                {
                    foreach (var cell in row.Elements<Cell>())
                    {
                        var cellValue = GetCellText(workbookPart, cell);
                        if (string.IsNullOrEmpty(cellValue)) continue;

                        foreach (var variable in variables)
                        {
                            var placeholder = $"{{{{{variable.Key}}}}}"; // {{VariableName}}
                            if (cellValue.Contains(placeholder))
                            {
                                var newText = cellValue.Replace(placeholder, variable.Value?.ToString() ?? options.MissingVariablePlaceholder);
                                SetCellText(workbookPart, cell, newText);
                                populatedVariables[variable.Key] = variable.Value ?? options.MissingVariablePlaceholder;
                            }
                        }
                    }
                }

                worksheetPart.Worksheet?.Save();
            }
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

    private string GetCellText(WorkbookPart workbookPart, Cell cell)
    {
        if (cell == null) return string.Empty;
        var value = cell.CellValue?.Text ?? string.Empty;

        if (cell.DataType != null && cell.DataType == CellValues.SharedString)
        {
            if (int.TryParse(value, out var id))
            {
                var sst = workbookPart.SharedStringTablePart?.SharedStringTable;
                if (sst != null && id >= 0 && id < sst.Count())
                {
                    return sst.ElementAt(id).InnerText ?? string.Empty;
                }
            }
            return string.Empty;
        }

        return value;
    }

    private void SetCellText(WorkbookPart workbookPart, Cell cell, string text)
    {
        if (cell.DataType != null && cell.DataType == CellValues.SharedString)
        {
            var sstPart = workbookPart.SharedStringTablePart;
            if (sstPart == null)
            {
                sstPart = workbookPart.AddNewPart<SharedStringTablePart>();
                sstPart.SharedStringTable = new SharedStringTable();
            }

            var sst = sstPart.SharedStringTable!;
            var item = new SharedStringItem(new DocumentFormat.OpenXml.Spreadsheet.Text(text));
            sst.AppendChild(item);
            sst.Save();

            cell.CellValue = new CellValue((sst.Count() - 1).ToString());
            cell.DataType = CellValues.SharedString;
        }
        else
        {
            cell.CellValue = new CellValue(text);
            cell.DataType = CellValues.String;
        }
    }
}
