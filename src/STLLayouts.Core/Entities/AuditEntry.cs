namespace STLLayouts.Core.Entities;

public class AuditEntry
{
    public Guid AuditEntryId { get; set; }
    public DateTime Timestamp { get; set; }
    public string UserName { get; set; } = string.Empty;
    public string EventType { get; set; } = string.Empty;
    public string? JobId { get; set; }
    public Guid? TemplateId { get; set; }
    public Guid? RuleId { get; set; }
    public string Details { get; set; } = string.Empty;
    public string? VariableValues { get; set; }
    public string? FilePath { get; set; }
    public TimeSpan? Duration { get; set; }
    public bool Success { get; set; }
    public string? ErrorMessage { get; set; }
}
