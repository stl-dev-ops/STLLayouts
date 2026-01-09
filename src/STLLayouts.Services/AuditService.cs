using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;
using STLLayouts.Data;

namespace STLLayouts.Services;

public class AuditService : IAuditService
{
    private readonly IDbContextFactory<ApplicationDbContext> _contextFactory;
    private readonly ILogger<AuditService>? _logger;

    public AuditService(IDbContextFactory<ApplicationDbContext> contextFactory, ILogger<AuditService>? logger = null)
    {
        _contextFactory = contextFactory ?? throw new ArgumentNullException(nameof(contextFactory));
        _logger = logger;
    }

    public async Task LogAsync(AuditEntry entry)
    {
        try
        {
            await using var context = await _contextFactory.CreateDbContextAsync();
            await context.AuditEntries.AddAsync(entry);
            await context.SaveChangesAsync();
        }
        catch (Exception ex)
        {
            _logger?.LogWarning(ex, "Could not save audit entry to database. Continuing without audit logging.");
        }
    }

    public async Task LogAsync(string eventType, string userName, string details, bool success = true)
    {
        var entry = new AuditEntry
        {
            AuditEntryId = Guid.NewGuid(),
            EventType = eventType,
            UserName = userName,
            Details = details,
            Success = success,
            Timestamp = DateTime.Now
        };

        await LogAsync(entry);
    }

    public async Task<List<AuditEntry>> GetAuditLogsAsync(DateTime? startDate = null, DateTime? endDate = null)
    {
        try
        {
            await using var context = await _contextFactory.CreateDbContextAsync();
            var query = context.AuditEntries.AsQueryable();

            if (startDate.HasValue)
                query = query.Where(a => a.Timestamp >= startDate.Value);

            if (endDate.HasValue)
                query = query.Where(a => a.Timestamp <= endDate.Value);

            return await query
                .OrderByDescending(a => a.Timestamp)
                .ToListAsync();
        }
        catch (Exception ex)
        {
            _logger?.LogWarning(ex, "Could not retrieve audit logs from database. Returning empty list.");
            return new List<AuditEntry>();
        }
    }

    public async Task<List<AuditEntry>> GetAuditLogsByUserAsync(string userName)
    {
        await using var context = await _contextFactory.CreateDbContextAsync();
        return await context.AuditEntries
            .Where(a => a.UserName == userName)
            .OrderByDescending(a => a.Timestamp)
            .ToListAsync();
    }

    public async Task<List<AuditEntry>> GetAuditLogsByEventTypeAsync(string eventType)
    {
        await using var context = await _contextFactory.CreateDbContextAsync();
        return await context.AuditEntries
            .Where(a => a.EventType == eventType)
            .OrderByDescending(a => a.Timestamp)
            .ToListAsync();
    }
}
