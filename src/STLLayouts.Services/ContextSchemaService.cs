using Dapper;
using Microsoft.Data.SqlClient;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.Services;

public sealed class ContextSchemaService(string connectionString) : IContextSchemaService
{
    private readonly string _connectionString = connectionString;

    // View names (sqlb00)
    private const string ScalarViewName = "dbo.vw_STLLayouts_JobContext";
    private static readonly Dictionary<string, string> CollectionViews = new(StringComparer.OrdinalIgnoreCase)
    {
        ["OrderLines"] = "dbo.vw_STLLayouts_OrderLines",
        ["Order Lines"] = "dbo.vw_STLLayouts_OrderLines",
        ["Reservations"] = "dbo.vw_STLLayouts_Reservations"
    };

    public Task<IReadOnlyList<ContextFieldInfo>> GetScalarFieldsAsync(CancellationToken cancellationToken = default)
        => GetViewColumnsAsync(ScalarViewName, cancellationToken);

    public Task<IReadOnlyList<ContextFieldInfo>> GetCollectionFieldsAsync(string collectionName, CancellationToken cancellationToken = default)
    {
        if (string.IsNullOrWhiteSpace(collectionName))
        {
            return Task.FromResult<IReadOnlyList<ContextFieldInfo>>([]);
        }

        if (!CollectionViews.TryGetValue(collectionName.Trim(), out var viewFullName))
        {
            return Task.FromResult<IReadOnlyList<ContextFieldInfo>>([]);
        }

        return GetViewColumnsAsync(viewFullName, cancellationToken);
    }

    private async Task<IReadOnlyList<ContextFieldInfo>> GetViewColumnsAsync(string viewFullName, CancellationToken cancellationToken)
    {
        const string sql = @"
SELECT
    c.name AS [Name],
    t.name AS [DataType],
    c.is_nullable AS [IsNullable]
FROM sys.columns c
JOIN sys.types t ON c.user_type_id = t.user_type_id
WHERE c.object_id = OBJECT_ID(@ViewName)
ORDER BY c.column_id;";

        await using var conn = new SqlConnection(_connectionString);
        var rows = await conn.QueryAsync<ContextFieldInfo>(new CommandDefinition(
            sql,
            new { ViewName = viewFullName },
            cancellationToken: cancellationToken));

        return [.. rows];
    }
}
