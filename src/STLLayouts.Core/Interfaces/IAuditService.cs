using STLLayouts.Core.Entities;

namespace STLLayouts.Core.Interfaces;

public interface IAuditService
{
    Task LogAsync(AuditEntry entry);
    Task LogAsync(string eventType, string userName, string details, bool success = true);
    Task<List<AuditEntry>> GetAuditLogsAsync(DateTime? startDate = null, DateTime? endDate = null);
    Task<List<AuditEntry>> GetAuditLogsByUserAsync(string userName);
    Task<List<AuditEntry>> GetAuditLogsByEventTypeAsync(string eventType);
}
