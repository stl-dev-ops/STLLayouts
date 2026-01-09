namespace STLLayouts.OfficeGen;

internal static class TemplateToken
{
    internal static string Single(string name) => $"{{{{{name}}}}}";
    internal static string BlockStart(string name) => $"{{{{#{name}}}}}";
    internal static string BlockEnd(string name) => $"{{{{/{name}}}}}";

    internal static bool TryParseBlockStart(string text, out string name)
    {
        name = string.Empty;
        if (string.IsNullOrWhiteSpace(text)) return false;

        var t = text.Trim();
        if (!t.StartsWith("{{#", StringComparison.Ordinal) || !t.EndsWith("}}", StringComparison.Ordinal)) return false;
        name = t[3..^2].Trim();
        return name.Length > 0;
    }

    internal static bool TryParseBlockEnd(string text, out string name)
    {
        name = string.Empty;
        if (string.IsNullOrWhiteSpace(text)) return false;

        var t = text.Trim();
        if (!t.StartsWith("{{/", StringComparison.Ordinal) || !t.EndsWith("}}", StringComparison.Ordinal)) return false;
        name = t[3..^2].Trim();
        return name.Length > 0;
    }
}
