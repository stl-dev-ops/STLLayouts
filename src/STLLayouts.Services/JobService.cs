using System.Data;
using Dapper;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.Services;

/// <summary>
/// JobService queries the CERM database (sqlb00) read-only
/// Main table: dbo_order___ with joins to dbo_klabas__ for customer details
/// </summary>
public class JobService : IJobService
{
    private readonly string _connectionString;
    private readonly ILogger<JobService>? _logger;

    public JobService(string connectionString, ILogger<JobService>? logger = null)
    {
        _connectionString = connectionString;
        _logger = logger;
    }

    public async Task<List<Job>> SearchJobsAsync(JobSearchCriteria criteria)
    {
        try
        {
            _logger?.LogInformation("Starting job search with criteria: JobNumber={JobNumber}, CustomerName={CustomerName}", 
                criteria.JobNumber, criteria.CustomerName);

            using var connection = new SqlConnection(_connectionString);
            await connection.OpenAsync();
            _logger?.LogInformation("Connected to CERM database");

            var sql = @"
                SELECT 
                    o.ord__ref,
                    o.kla__ref,
                    k.kla__rpn,
                    k.naam____ as CustomerName,
                    o.omschr__,
                    o.best_dat,
                    o.leverdat,
                    o.oplage__,
                    o.bon__ref,
                    o.open____
                FROM dbo.order___ o
                LEFT JOIN dbo.klabas__ k ON o.kla__ref = k.kla__ref
                WHERE 1=1";

        var parameters = new DynamicParameters();

        if (!string.IsNullOrWhiteSpace(criteria.JobNumber))
        {
            sql += " AND o.ord__ref LIKE @JobNumber";
            parameters.Add("JobNumber", $"%{criteria.JobNumber}%");
        }

        if (!string.IsNullOrWhiteSpace(criteria.CustomerName))
        {
            sql += " AND k.naam____ LIKE @CustomerName";
            parameters.Add("CustomerName", $"%{criteria.CustomerName}%");
        }

        if (criteria.OrderDateFrom.HasValue)
        {
            sql += " AND o.best_dat >= @OrderDateFrom";
            parameters.Add("OrderDateFrom", criteria.OrderDateFrom.Value);
        }

        if (criteria.OrderDateTo.HasValue)
        {
            sql += " AND o.best_dat <= @OrderDateTo";
            parameters.Add("OrderDateTo", criteria.OrderDateTo.Value);
        }

        if (!string.IsNullOrWhiteSpace(criteria.JobStatus))
        {
            sql += " AND o.open____ = @JobStatus";
            parameters.Add("JobStatus", criteria.JobStatus);
        }

        sql += " ORDER BY o.best_dat DESC";

        // Use OFFSET/FETCH for pagination when requested, otherwise default limit of 100
        if (criteria.PageSize > 0)
        {
            sql += " OFFSET @Offset ROWS FETCH NEXT @PageSize ROWS ONLY";
            parameters.Add("Offset", (criteria.PageNumber - 1) * criteria.PageSize);
            parameters.Add("PageSize", criteria.PageSize);
        }
        else
        {
            sql += " OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY";
        }

        var jobs = await connection.QueryAsync<Job>(sql, parameters);
        var result = jobs.ToList();
        
        _logger?.LogInformation("Job search returned {Count} results", result.Count);
        return result;
        }
        catch (Exception ex)
        {
            _logger?.LogError(ex, "Error during job search: {Message}", ex.Message);
            throw;
        }
    }

    public async Task<Job?> GetJobByIdAsync(string jobId)
    {
        using var connection = new SqlConnection(_connectionString);
        await connection.OpenAsync();

        var sql = @"
            SELECT 
                o.ord__ref,
                o.kla__ref,
                k.kla__rpn,
                k.naam____ as CustomerName,
                o.omschr__,
                o.best_dat,
                o.leverdat,
                o.oplage__,
                o.bon__ref,
                o.open____
            FROM dbo.order___ o
            LEFT JOIN dbo.klabas__ k ON o.kla__ref = k.kla__ref
            WHERE o.ord__ref = @JobId";

        return await connection.QueryFirstOrDefaultAsync<Job>(sql, new { JobId = jobId });
    }

    public async Task<Dictionary<string, object>> GetJobContextAsync(string jobId)
    {
        using var connection = new SqlConnection(_connectionString);
        await connection.OpenAsync();

        // Comprehensive query that gets job details from CERM database
        var sql = @"
            SELECT 
                o.*,
                k.naam____ as CustomerName,
                k.kla__rpn,
                k.adres___ as CustomerAddress,
                k.postcode as CustomerPostalCode,
                k.plaats__ as CustomerCity
            FROM dbo.order___ o
            LEFT JOIN dbo.klabas__ k ON o.kla__ref = k.kla__ref
            WHERE o.ord__ref = @JobId";

        var result = await connection.QueryAsync(sql, new { JobId = jobId });
        var firstRow = result.FirstOrDefault();

        if (firstRow == null)
            return new Dictionary<string, object>();

        // Convert dynamic object to dictionary
        var context = new Dictionary<string, object>();
        var row = (IDictionary<string, object>)firstRow;
        
        foreach (var kvp in row)
        {
            context[kvp.Key] = kvp.Value ?? string.Empty;
        }

        return context;
    }
}
