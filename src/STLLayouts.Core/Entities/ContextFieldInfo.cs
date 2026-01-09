namespace STLLayouts.Core.Entities;

public sealed class ContextFieldInfo
{
    public required string Name { get; init; }
    public string? DataType { get; init; }
    public bool IsNullable { get; init; }
}
