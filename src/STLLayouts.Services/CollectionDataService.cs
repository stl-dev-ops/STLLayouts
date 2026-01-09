using System.Data;
using Dapper;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.Services;

public sealed class CollectionDataService(string connectionString, ILogger<CollectionDataService> logger) : ICollectionDataService
{
    private readonly string _connectionString = connectionString;
    private readonly ILogger<CollectionDataService> _logger = logger;

    private static readonly Dictionary<string, string> CollectionViews = new(StringComparer.OrdinalIgnoreCase)
    {
        ["OrderLines"] = "dbo.vw_STLLayouts_OrderLines",
        ["Order Lines"] = "dbo.vw_STLLayouts_OrderLines",
        ["Reservations"] = "dbo.vw_STLLayouts_Reservations"
    };

    public async Task<IReadOnlyList<Dictionary<string, object?>>> GetCollectionAsync(
        Job job,
        string collectionName,
        CancellationToken cancellationToken = default)
    {
        ArgumentNullException.ThrowIfNull(job);

        if (string.IsNullOrWhiteSpace(collectionName))
        {
            return [];
        }

        if (!CollectionViews.TryGetValue(collectionName.Trim(), out var viewFullName))
        {
            _logger.LogWarning("Unknown collection '{CollectionName}' requested", collectionName);
            return [];
        }

        const string sqlTemplate = @"
SELECT *
FROM {0}
WHERE ord__ref = @JobId
ORDER BY 1;";

        var sql = string.Format(sqlTemplate, viewFullName);

        await using var conn = new SqlConnection(_connectionString);
        var rows = await conn.QueryAsync(new CommandDefinition(
            sql,
            new { JobId = job.ord__ref },
            cancellationToken: cancellationToken));

        List<Dictionary<string, object?>> result = [];
        foreach (var row in rows)
        {
            if (row is IDictionary<string, object> dict)
            {
                Dictionary<string, object?> normalized = new(StringComparer.OrdinalIgnoreCase);
                foreach (var kvp in dict)
                {
                    normalized[kvp.Key] = kvp.Value is DBNull ? null : kvp.Value;
                }
                result.Add(normalized);
            }
        }

        return result;
    }
}
