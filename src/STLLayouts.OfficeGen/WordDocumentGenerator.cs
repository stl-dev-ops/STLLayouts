using System.Diagnostics;
using System.Text.RegularExpressions;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.OfficeGen;

public sealed class WordDocumentGenerator(ILogger<WordDocumentGenerator> logger) : IDocumentGenerator
{
    private delegate string TokenReplacer(string token);

    private readonly ILogger<WordDocumentGenerator> _logger = logger;

    public bool SupportsFormat(string fileExtension)
        => string.Equals(fileExtension, ".docx", StringComparison.OrdinalIgnoreCase);

    public async Task<GeneratedDocument> GenerateAsync(
        Template template,
        Dictionary<string, object> variables,
        DocumentGenerationOptions options)
    {
        ArgumentNullException.ThrowIfNull(template);
        ArgumentNullException.ThrowIfNull(variables);
        ArgumentNullException.ThrowIfNull(options);

        var sw = Stopwatch.StartNew();

        Directory.CreateDirectory(options.OutputPath);
        var outputFileName = $"{SanitizeFileName(template.TemplateName)}_{DateTime.Now:yyyyMMdd_HHmmss}.docx";
        var outputPath = Path.Combine(options.OutputPath, outputFileName);

        File.Copy(template.FilePath, outputPath, overwrite: true);

        using (var doc = WordprocessingDocument.Open(outputPath, true))
        {
            ExpandRepeatingRows(doc, variables);
            ReplaceScalarText(doc, variables);
            doc.MainDocumentPart?.Document.Save();
        }

        sw.Stop();

        var info = new FileInfo(outputPath);
        return await Task.FromResult(new GeneratedDocument
        {
            FilePath = outputPath,
            FileName = Path.GetFileName(outputPath),
            FileSizeBytes = info.Exists ? info.Length : 0,
            GenerationDuration = sw.Elapsed,
            PopulatedVariables = new Dictionary<string, object>(variables, StringComparer.OrdinalIgnoreCase)
        });
    }

    private void ExpandRepeatingRows(WordprocessingDocument doc, Dictionary<string, object> variables)
    {
        var body = doc.MainDocumentPart?.Document?.Body;
        if (body == null) return;

        var tables = body.Descendants<Table>().ToList();
        foreach (var table in tables)
        {
            var rows = table.Elements<TableRow>().ToList();
            for (var i = 0; i < rows.Count; i++)
            {
                var row = rows[i];
                var rowText = GetRowText(row);

                if (!TemplateToken.TryParseBlockStart(rowText, out var collectionName))
                {
                    continue;
                }

                _logger.LogInformation("Word repeat block start found for collection '{CollectionName}'", collectionName);

                var endRowIndex = -1;
                for (var j = i; j < rows.Count; j++)
                {
                    var rt = GetRowText(rows[j]);
                    if (TemplateToken.TryParseBlockEnd(rt, out var endName)
                        && string.Equals(endName, collectionName, StringComparison.OrdinalIgnoreCase))
                    {
                        endRowIndex = j;
                        break;
                    }
                }

                if (i + 1 >= rows.Count)
                {
                    row.Remove();
                    break;
                }

                var templateRow = rows[i + 1];
                var insertBefore = endRowIndex >= 0 && endRowIndex < rows.Count ? rows[endRowIndex] : null;

                var items = TryGetCollectionItems(variables, collectionName);

                if (items.Count == 0)
                {
                    var found = variables.ContainsKey(collectionName);
                    _logger.LogWarning(
                        "Word repeat block for collection '{CollectionName}' had 0 items (variable present: {VariablePresent})",
                        collectionName,
                        found);
                }
                else
                {
                    _logger.LogInformation(
                        "Expanding Word repeat block for collection '{CollectionName}' with {ItemCount} item(s)",
                        collectionName,
                        items.Count);
                }

                foreach (var item in items)
                {
                    var clone = (TableRow)templateRow.CloneNode(true);
                    ReplaceRowTokens(clone, collectionName, item);

                    if (insertBefore != null)
                    {
                        table.InsertBefore(clone, insertBefore);
                    }
                    else
                    {
                        table.AppendChild(clone);
                    }
                }

                row.Remove();
                templateRow.Remove();
                insertBefore?.Remove();

                rows = [.. table.Elements<TableRow>()];
                i = -1;
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

    private static void ReplaceRowTokens(TableRow row, string collectionName, Dictionary<string, object?> item)
    {
        foreach (var cell in row.Elements<TableCell>())
        {
            var texts = cell.Descendants<Text>().ToList();
            if (texts.Count == 0) continue;

            ReplaceTokensAcrossTextNodes(texts, token => ReplaceItemTokens(token, collectionName, item));
        }
    }

    private static void ReplaceTokensAcrossTextNodes(
        IReadOnlyList<Text> texts,
        TokenReplacer replaceInTokenText)
    {
        var totalLen = 0;
        for (var i = 0; i < texts.Count; i++)
        {
            totalLen += texts[i].Text?.Length ?? 0;
        }

        if (totalLen == 0)
        {
            return;
        }

        var combined = string.Concat(texts.Select(t => t.Text ?? string.Empty));
        var changed = false;

        static int FindNext(string haystack, string needle, int start)
            => haystack.IndexOf(needle, start, StringComparison.Ordinal);

        var scanIndex = 0;
        while (scanIndex < combined.Length)
        {
            var start = FindNext(combined, "{{", scanIndex);
            if (start < 0) break;

            var end = FindNext(combined, "}}", start + 2);
            if (end < 0) break;

            var tokenLen = (end + 2) - start;
            if (tokenLen <= 4)
            {
                scanIndex = end + 2;
                continue;
            }

            var token = new string(combined.AsSpan(start, tokenLen));
            var replaced = replaceInTokenText(token);

            if (!string.Equals(token, replaced, StringComparison.Ordinal))
            {
                combined = string.Concat(
                    combined.AsSpan(0, start),
                    replaced.AsSpan(),
                    combined.AsSpan(end + 2));

                changed = true;
                scanIndex = start + replaced.Length;
            }
            else
            {
                scanIndex = end + 2;
            }
        }

        if (!changed)
        {
            return;
        }

        var idx = 0;
        for (var i = 0; i < texts.Count; i++)
        {
            var originalLen = texts[i].Text?.Length ?? 0;
            if (originalLen == 0)
            {
                continue;
            }

            var remaining = combined.Length - idx;
            if (i == texts.Count - 1)
            {
                texts[i].Text = remaining > 0 ? new string(combined.AsSpan(idx)) : string.Empty;
                idx = combined.Length;
                continue;
            }

            if (remaining <= 0)
            {
                texts[i].Text = string.Empty;
                continue;
            }

            var take = Math.Min(originalLen, remaining);
            texts[i].Text = new string(combined.AsSpan(idx, take));
            idx += take;
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

    private static void ReplaceScalarText(WordprocessingDocument doc, Dictionary<string, object> variables)
    {
        var texts = doc.MainDocumentPart?.Document?.Descendants<Text>().ToList();
        if (texts is not { Count: > 0 }) return;

        foreach (var t in texts)
        {
            if (string.IsNullOrEmpty(t.Text)) continue;

            var updated = t.Text;

            foreach (var kvp in variables)
            {
                if (kvp.Value is IEnumerable<Dictionary<string, object?>> || kvp.Value is IReadOnlyList<Dictionary<string, object?>>)
                {
                    continue;
                }

                var replacement = kvp.Value?.ToString() ?? string.Empty;
                updated = updated.Replace(TemplateToken.Single(kvp.Key), replacement, StringComparison.OrdinalIgnoreCase);
            }

            t.Text = updated;
        }
    }

    private static string GetRowText(TableRow row)
        => string.Concat(row.Descendants<Text>().Select(t => t.Text)).Trim();

    private static string SanitizeFileName(string name)
    {
        foreach (var c in Path.GetInvalidFileNameChars())
        {
            name = name.Replace(c, '_');
        }

        return string.IsNullOrWhiteSpace(name) ? "Document" : name;
    }
}
