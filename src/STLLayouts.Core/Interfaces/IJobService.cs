using STLLayouts.Core.Entities;

namespace STLLayouts.Core.Interfaces;

public class JobSearchCriteria
{
    public string? JobNumber { get; set; }
    public string? CustomerName { get; set; }
    public string? ProductDescription { get; set; }
    public DateTime? OrderDateFrom { get; set; }
    public DateTime? OrderDateTo { get; set; }
    public string? JobStatus { get; set; }
    public int PageSize { get; set; } = 50;
    public int PageNumber { get; set; } = 1;
}

public interface IJobService
{
    Task<List<Job>> SearchJobsAsync(JobSearchCriteria criteria);
    Task<Job?> GetJobByIdAsync(string jobId);
    Task<Dictionary<string, object>> GetJobContextAsync(string jobId);
}
