namespace STLLayouts.Core.Entities;

public class VariableMapping
{
    public Guid VariableMappingId { get; set; }
    public string VariableName { get; set; } = string.Empty;
    public string? DatabaseField { get; set; }
    public string? SqlExpression { get; set; }
    public string DataType { get; set; } = "String";
    public string Category { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public bool IsRequired { get; set; }
    public string? DefaultValue { get; set; }
    public string CreatedBy { get; set; } = string.Empty;
    public DateTime CreatedDate { get; set; }
}
