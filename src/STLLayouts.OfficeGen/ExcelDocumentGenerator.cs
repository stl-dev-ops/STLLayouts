using System.Text.RegularExpressions;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Spreadsheet;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.OfficeGen;

public partial class ExcelDocumentGenerator : IDocumentGenerator
{
    public bool SupportsFormat(string fileExtension)
        => fileExtension.Equals(".xlsx", StringComparison.OrdinalIgnoreCase);

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

                ExpandRepeatingRows(workbookPart, sheetData, variables);
                ReplaceScalarCells(workbookPart, sheetData, variables, options, populatedVariables);

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

    private static void ExpandRepeatingRows(WorkbookPart workbookPart, SheetData sheetData, Dictionary<string, object> variables)
    {
        var rows = sheetData.Elements<Row>().ToList();

        for (var i = 0; i < rows.Count; i++)
        {
            var markerRow = rows[i];
            var markerText = GetRowText(workbookPart, markerRow);

            if (!TemplateToken.TryParseBlockStart(markerText, out var collectionName))
            {
                continue;
            }

            // Template row is expected immediately after the start marker row.
            if (i + 1 >= rows.Count)
            {
                markerRow.Remove();
                break;
            }

            // Locate optional end marker row.
            var endRowIndex = -1;
            for (var j = i + 1; j < rows.Count; j++)
            {
                var rt = GetRowText(workbookPart, rows[j]);
                if (TemplateToken.TryParseBlockEnd(rt, out var endName)
                    && string.Equals(endName, collectionName, StringComparison.OrdinalIgnoreCase))
                {
                    endRowIndex = j;
                    break;
                }
            }

            var templateRow = rows[i + 1];
            var insertBefore = endRowIndex >= 0 && endRowIndex < rows.Count ? rows[endRowIndex] : null;

            var items = TryGetCollectionItems(variables, collectionName);

            foreach (var item in items)
            {
                var clone = (Row)templateRow.CloneNode(true);
                ReplaceRowTokens(workbookPart, clone, collectionName, item);

                if (insertBefore != null)
                {
                    sheetData.InsertBefore(clone, insertBefore);
                }
                else
                {
                    sheetData.AppendChild(clone);
                }
            }

            // Remove marker row, template row, and optional end marker row.
            markerRow.Remove();
            templateRow.Remove();
            insertBefore?.Remove();

            // refresh local snapshot and restart scan (since we mutated)
            rows = [.. sheetData.Elements<Row>()];
            i = -1;
        }

        // After cloning/removing rows, row indices are fine for Excel, but cell references might now be inconsistent.
        // Recalculate row indices and update cell references to match.
        NormalizeRowAndCellReferences(sheetData);
    }

    private static void ReplaceScalarCells(
        WorkbookPart workbookPart,
        SheetData sheetData,
        Dictionary<string, object> variables,
        DocumentGenerationOptions options,
        Dictionary<string, object> populatedVariables)
    {
        foreach (var row in sheetData.Elements<Row>())
        {
            foreach (var cell in row.Elements<Cell>())
            {
                var cellValue = GetCellText(workbookPart, cell);
                if (string.IsNullOrEmpty(cellValue)) continue;

                foreach (var variable in variables)
                {
                    // collections are handled by repeat support
                    if (variable.Value is IEnumerable<Dictionary<string, object?>> || variable.Value is IReadOnlyList<Dictionary<string, object?>>)
                    {
                        continue;
                    }

                    var placeholder = $"{{{{{variable.Key}}}}}"; // {{VariableName}}
                    if (cellValue.Contains(placeholder, StringComparison.Ordinal))
                    {
                        var newText = cellValue.Replace(
                            placeholder,
                            variable.Value?.ToString() ?? options.MissingVariablePlaceholder,
                            StringComparison.Ordinal);

                        SetCellText(workbookPart, cell, newText);
                        populatedVariables[variable.Key] = variable.Value ?? options.MissingVariablePlaceholder;
                        cellValue = newText;
                    }
                }
            }
        }
    }

    private static IReadOnlyList<Dictionary<string, object?>> TryGetCollectionItems(Dictionary<string, object> variables, string collectionName)
    {
        if (!variables.TryGetValue(collectionName, out var value) || value == null)
        {
            return [];
        }

        if (value is IReadOnlyList<Dictionary<string, object?>> ro)
        {
            return ro;
        }

        if (value is IEnumerable<Dictionary<string, object?>> e)
        {
            return [.. e];
        }

        if (value is IEnumerable<Dictionary<string, object>> e2)
        {
            return
            [
                .. e2.Select(d => d.ToDictionary(k => k.Key, v => (object?)v.Value, StringComparer.OrdinalIgnoreCase))
            ];
        }

        return [];
    }

    private static void ReplaceRowTokens(WorkbookPart workbookPart, Row row, string collectionName, Dictionary<string, object?> item)
    {
        foreach (var cell in row.Elements<Cell>())
        {
            var cellValue = GetCellText(workbookPart, cell);
            if (string.IsNullOrEmpty(cellValue)) continue;

            var updated = ReplaceItemTokens(cellValue, collectionName, item);
            if (!string.Equals(updated, cellValue, StringComparison.Ordinal))
            {
                SetCellText(workbookPart, cell, updated);
            }
        }
    }

    private static string ReplaceItemTokens(string input, string collectionName, Dictionary<string, object?> item)
    {
        var pattern = $"\\{{\\{{\\s*{Regex.Escape(collectionName)}\\.(?<field>[A-Za-z0-9_]+)\\s*\\}}\\}}";
        return Regex.Replace(input, pattern, m =>
        {
            var field = m.Groups["field"].Value;
            if (item.TryGetValue(field, out var value) && value != null)
            {
                return value.ToString() ?? string.Empty;
            }

            var kvp = item.FirstOrDefault(k => string.Equals(k.Key, field, StringComparison.OrdinalIgnoreCase));
            return kvp.Key != null ? (kvp.Value?.ToString() ?? string.Empty) : string.Empty;
        }, RegexOptions.IgnoreCase);
    }

    private static string GetColumnName(string? cellReference)
    {
        if (string.IsNullOrWhiteSpace(cellReference))
        {
            return string.Empty;
        }

        var match = ColumnNameRegex().Match(cellReference);
        return match.Success ? match.Value : string.Empty;
    }

    private static string GetRowText(WorkbookPart workbookPart, Row row)
    {
        var parts = new List<string>();
        foreach (var cell in row.Elements<Cell>())
        {
            var text = GetCellText(workbookPart, cell);
            if (!string.IsNullOrWhiteSpace(text))
            {
                parts.Add(text.Trim());
            }
        }

        return string.Join(string.Empty, parts).Trim();
    }

    private static void NormalizeRowAndCellReferences(SheetData sheetData)
    {
        var rows = sheetData.Elements<Row>().ToList();

        // Excel uses 1-based row indices.
        for (var i = 0; i < rows.Count; i++)
        {
            uint rowIndex = (uint)(i + 1);
            var row = rows[i];
            row.RowIndex = rowIndex;

            foreach (var cell in row.Elements<Cell>())
            {
                var col = GetColumnName(cell.CellReference?.Value);
                if (!string.IsNullOrEmpty(col))
                {
                    cell.CellReference = col + rowIndex;
                }
            }
        }
    }

    [GeneratedRegex("^[A-Za-z]+")]
    private static partial Regex ColumnNameRegex();

    private static string GetCellText(WorkbookPart workbookPart, Cell cell)
    {
        var value = cell.CellValue?.Text ?? string.Empty;

        if (cell.DataType?.Value == CellValues.SharedString)
        {
            if (int.TryParse(value, out var id))
            {
                var sst = workbookPart.SharedStringTablePart?.SharedStringTable;
                if (sst is not null && id >= 0 && id < sst.Count())
                {
                    return sst.ElementAt(id).InnerText ?? string.Empty;
                }
            }
            return string.Empty;
        }

        return value;
    }

    private static void SetCellText(WorkbookPart workbookPart, Cell cell, string text)
    {
        // Force shared string to preserve existing cell formatting (best-effort) and simplify string storage.
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
}
