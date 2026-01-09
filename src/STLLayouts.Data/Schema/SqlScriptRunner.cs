using System.Text;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace STLLayouts.Data.Schema;

public static class SqlScriptRunner
{
    public static async Task ExecuteSqlFileAsync(
        DbContext dbContext,
        string filePath,
        ILogger logger,
        CancellationToken cancellationToken = default)
    {
        ArgumentNullException.ThrowIfNull(dbContext);
        ArgumentNullException.ThrowIfNull(logger);
        ArgumentException.ThrowIfNullOrWhiteSpace(filePath);

        if (!File.Exists(filePath))
        {
            logger.LogWarning("SQL script file not found: {FilePath}", filePath);
            return;
        }

        var sql = await File.ReadAllTextAsync(filePath, cancellationToken);
        var batches = SplitOnGo(sql);

        logger.LogInformation("Executing SQL script: {FilePath} ({BatchCount} batch(es))", filePath, batches.Count);

        foreach (var batch in batches)
        {
            if (string.IsNullOrWhiteSpace(batch))
            {
                continue;
            }

            try
            {
                await dbContext.Database.ExecuteSqlRawAsync(batch, cancellationToken);
            }
            catch (SqlException ex)
            {
                logger.LogError(ex, "SQL script batch failed for {FilePath}", filePath);
                throw;
            }
        }
    }

    private static List<string> SplitOnGo(string sql)
    {
        var result = new List<string>();
        var sb = new StringBuilder();

        using var reader = new StringReader(sql);
        string? line;
        while ((line = reader.ReadLine()) != null)
        {
            if (line.Trim().Equals("GO", StringComparison.OrdinalIgnoreCase))
            {
                result.Add(sb.ToString());
                sb.Clear();
                continue;
            }

            sb.AppendLine(line);
        }

        if (sb.Length > 0)
        {
            result.Add(sb.ToString());
        }

        return result;
    }
}
