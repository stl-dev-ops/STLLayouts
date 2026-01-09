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
public class JobService(string connectionString, ILogger<JobService>? logger = null) : IJobService
{
    private readonly string _connectionString = connectionString;
    private readonly ILogger<JobService>? _logger = logger;

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

        // Single-row "context" result that denormalizes the most common relationships.
        // Note: for tables that can have multiple rows per order (e.g. bstlyn__, resgrd__),
        // we pick a deterministic row (TOP 1) so mappings return a scalar.
        var sql = @"
            SELECT
                -- Base order fields
                o.*, 

                -- Customer (klabas__)
                k.naam____  AS CustomerName,

                -- Fields referenced by current mappings (expose with stable column aliases)
                o.ord__ref   AS JobNumber,
                o.ord__rpn   AS JobOrderNumber,
                o.best_dat   AS OrderDate,
                o.omschr__   AS ProductDescription,
                o.open____   AS JobStatus,

                -- Customer fields used in mappings
                k.kla__ref   AS CustomerRef,
                k.kla__rpn   AS CustomerKeyword,
                k.straat__   AS CustomerStreet,
                k.wijk____   AS CustomerDistrict,
                k.postnaam  AS CustomerCity,
                k.telefoon  AS CustomerPhone,
                k.telefax_  AS CustomerFax,

                -- Sales line (bstlyn__) - pick first line by bstvlgnr
                bl.afg_oms1  AS SalesLineProductDesc1,
                bl.afg_oms2  AS SalesLineProductDesc2,
                bl.vrz__dat  AS ShipDate,
                bl.lev__dat  AS ActualDeliveryDate,
                bl.l_aantal  AS DeliveredQuantity,

                -- Reservation (resgrd__) - pick first reservation by dat_resv
                rg.dat_resv  AS ReservationDate,
                rg.reserve_  AS ReservedQuantity,
                rg.kommen_1  AS ReservationComments1,
                rg.kommen_2  AS ReservationComments2,
                rg.kommen_3  AS ReservationComments3,

                -- Product/version (v4vrs___)
                v.afg__ref   AS ProductCode,
                v.vrs__ref   AS ProductVersion,

                -- Product master (afgart__)
                a.afg_oms1   AS ProductFullDescription1,
                a.afg_oms2   AS ProductFullDescription2,
                a.afg__rpn   AS ProductKeyword,
                a.art__ref   AS ProductMaterialID,

                -- Material (artiky__)
                m.art_oms1   AS MaterialDescription1,
                m.art_oms2   AS MaterialDescription2,
                m.diameter  AS MaterialDiameter,
                m.grammage  AS MaterialGrammage,
                m.hoogte__   AS MaterialHeight,
                m.lengte__   AS MaterialLength,
                m.breedte_   AS MaterialWidth,
                m.art__rpn   AS MaterialKeyword,
                m.lev__ref   AS MaterialSupplierID,
                m.art__srt   AS MaterialType
            FROM dbo.order___ o
            LEFT JOIN dbo.klabas__ k
                ON o.kla__ref = k.kla__ref

            OUTER APPLY (
                SELECT TOP 1
                    b.afg_oms1,
                    b.afg_oms2,
                    b.vrz__dat,
                    b.lev__dat,
                    b.l_aantal,
                    b.afg__ref,
                    b.vrs__ref
                FROM dbo.bstlyn__ b
                WHERE b.ord__ref = o.ord__ref
                ORDER BY TRY_CONVERT(int, b.bstvlgnr) ASC, b.lyn__ref ASC
            ) bl

            OUTER APPLY (
                SELECT TOP 1
                    r.dat_resv,
                    r.reserve_,
                    r.kommen_1,
                    r.kommen_2,
                    r.kommen_3,
                    r.art__ref,
                    r.art__srt
                FROM dbo.resgrd__ r
                WHERE r.ord__ref = o.ord__ref
                ORDER BY r.dat_resv ASC, r.res__ref ASC
            ) rg

            LEFT JOIN dbo.v4vrs___ v
                ON v.off__ref = o.off__ref
               AND v.vrs__ref = bl.vrs__ref

            LEFT JOIN dbo.afgart__ a
                ON a.afg__ref = v.afg__ref

            LEFT JOIN dbo.artiky__ m
                ON m.art__ref = a.art__ref
            WHERE o.ord__ref = @JobId;";

        var firstRow = await connection.QueryFirstOrDefaultAsync(sql, new { JobId = jobId });
        if (firstRow == null)
        {
            return [];
        }

        // Convert dynamic object to dictionary. Preserve NULL so callers can distinguish
        // "not found/missing" from an empty string.
        var context = new Dictionary<string, object>(StringComparer.OrdinalIgnoreCase);
        var row = (IDictionary<string, object>)firstRow;

        foreach (var kvp in row)
        {
            context[kvp.Key] = kvp.Value;
        }

        return context;
    }
}
