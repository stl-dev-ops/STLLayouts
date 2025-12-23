namespace STLLayouts.Core.Entities;

/// <summary>
/// Job entity mapped to dbo_order___ table in CERM database (sqlb00)
/// Read-only access for document generation
/// </summary>
public class Job
{
    // Primary key
    public string ord__ref { get; set; } = string.Empty;
    
    // Customer reference
    public string kla__ref { get; set; } = string.Empty;
    public string kla__rpn { get; set; } = string.Empty;
    public string CustomerName { get; set; } = string.Empty; // From JOIN with dbo_klabas__
    
    // Job details
    public string omschr__ { get; set; } = string.Empty; // Description
    public DateTime? best_dat { get; set; } // Order date
    public DateTime? leverdat { get; set; } // Delivery date
    public decimal? oplage__ { get; set; } // Quantity
    public string bon__ref { get; set; } = string.Empty;
    public string open____ { get; set; } = string.Empty; // Open status (Y/N)
    
    // Convenient properties for compatibility with ViewModels
    public string JobNumber => ord__ref;
    public string ProductDescription => omschr__;
    public DateTime? OrderDate => best_dat;
    public DateTime? DueDate => leverdat;
    public decimal Quantity => oplage__ ?? 0;
    public DateTime CreatedDate => best_dat ?? DateTime.MinValue;
    public string JobStatus => open____ == "Y" ? "Open" : "Closed";
    
    // Extended properties loaded on-demand
    public Dictionary<string, object> ExtendedProperties { get; set; } = new();
}
