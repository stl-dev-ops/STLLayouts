namespace STLLayouts.Core.Entities;

public class VariableMappingValidationResult
{
    public string VariableName { get; set; } = string.Empty;
    public string? DatabaseField { get; set; }

    /// <summary>
    /// Key expected to exist in the context dictionary.
    /// For DatabaseField this is typically the stripped column name (schema.table.column -> column).
    /// </summary>
    public string ExpectedContextKey { get; set; } = string.Empty;

    public bool KeyFound { get; set; }
    public bool IsNull { get; set; }
    public bool IsEmptyString { get; set; }

    public object? Value { get; set; }
}
