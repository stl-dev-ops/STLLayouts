using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;
using STLLayouts.Data;

namespace STLLayouts.Services;

public class AuditService : IAuditService
{
    private readonly ApplicationDbContext _context;
    private readonly ILogger<AuditService>? _logger;

    public AuditService(ApplicationDbContext context, ILogger<AuditService>? logger = null)
    {
        _context = context;
        _logger = logger;
    }

    public async Task LogAsync(AuditEntry entry)
    {
        try
        {
            await _context.AuditEntries.AddAsync(entry);
            await _context.SaveChangesAsync();
        }
        catch (Exception ex)
        {
            // LocalDB may not be available; log to console/logger but don't fail the operation
            _logger?.LogWarning(ex, "Could not save audit entry to database. Continuing without audit logging.");
            // Don't rethrow - audit logging failure shouldn't stop the application
        }
    }

    public async Task LogAsync(string eventType, string userName, string details, bool success = true)
    {
        var entry = new AuditEntry
        {
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
            var query = _context.AuditEntries.AsQueryable();

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
            // LocalDB may not be available; return empty list
            _logger?.LogWarning(ex, "Could not retrieve audit logs from database. Returning empty list.");
            return new List<AuditEntry>();
        }
    }

    public async Task<List<AuditEntry>> GetAuditLogsByUserAsync(string userName)
    {
        return await _context.AuditEntries
            .Where(a => a.UserName == userName)
            .OrderByDescending(a => a.Timestamp)
            .ToListAsync();
    }

    public async Task<List<AuditEntry>> GetAuditLogsByEventTypeAsync(string eventType)
    {
        return await _context.AuditEntries
            .Where(a => a.EventType == eventType)
            .OrderByDescending(a => a.Timestamp)
            .ToListAsync();
    }
}
