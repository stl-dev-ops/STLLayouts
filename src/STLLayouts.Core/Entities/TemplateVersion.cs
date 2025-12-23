namespace STLLayouts.Core.Entities;

public class TemplateVersion
{
    public Guid TemplateVersionId { get; set; }
    public Guid TemplateId { get; set; }
    public int VersionNumber { get; set; }
    public string FilePath { get; set; } = string.Empty;
    public string ChangeNotes { get; set; } = string.Empty;
    public string ChangedBy { get; set; } = string.Empty;
    public DateTime ChangedDate { get; set; }

    // Navigation properties
    public Template? Template { get; set; }
}
