using Microsoft.EntityFrameworkCore;
using STLLayouts.Core.Entities;

namespace STLLayouts.Data;

public class ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : DbContext(options)
{
    // Jobs are read from CERM database via Dapper, not managed by EF Core
    public DbSet<Template> Templates { get; set; } = null!;
    public DbSet<TemplateVersion> TemplateVersions { get; set; } = null!;
    public DbSet<Rule> Rules { get; set; } = null!;
    public DbSet<VariableMapping> VariableMappings { get; set; } = null!;
    public DbSet<AuditEntry> AuditEntries { get; set; } = null!;

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);

        // Template configuration
        modelBuilder.Entity<Template>(entity =>
        {
            entity.ToTable("stlLayouts_Template");
            entity.HasKey(e => e.TemplateId);
            entity.Property(e => e.TemplateName).IsRequired().HasMaxLength(200);
            entity.Property(e => e.Category).HasMaxLength(100);
            entity.Property(e => e.FilePath).IsRequired().HasMaxLength(500);
            entity.Property(e => e.Description).HasMaxLength(1000);
            entity.Property(e => e.CurrentVersion).HasDefaultValue(1);
            entity.Property(e => e.UploadedDate).HasDefaultValueSql("GETDATE()");
            entity.HasIndex(e => e.TemplateName).IsUnique();
            entity.HasIndex(e => e.Category);
            entity.Ignore(e => e.Variables);
        });

        // TemplateVersion configuration
        modelBuilder.Entity<TemplateVersion>(entity =>
        {
            entity.ToTable("stlLayouts_TemplateVersion");
            entity.HasKey(e => e.TemplateVersionId);
            entity.Property(e => e.FilePath).IsRequired().HasMaxLength(500);
            entity.Property(e => e.ChangeNotes).HasMaxLength(500);
            entity.Property(e => e.ChangedDate).HasDefaultValueSql("GETDATE()");
            entity.HasOne(e => e.Template)
                .WithMany(t => t.Versions)
                .HasForeignKey(e => e.TemplateId)
                .OnDelete(DeleteBehavior.Cascade);
        });

        // Rule configuration
        modelBuilder.Entity<Rule>(entity =>
        {
            entity.ToTable("stlLayouts_Rule");
            entity.HasKey(e => e.RuleId);
            entity.Property(e => e.RuleName).IsRequired().HasMaxLength(200);
            entity.Property(e => e.Condition).IsRequired();
            entity.Property(e => e.Priority).HasDefaultValue(100);
            entity.Property(e => e.CreatedDate).HasDefaultValueSql("GETDATE()");
            entity.HasIndex(e => e.Priority);
            entity.HasOne(e => e.Template)
                .WithMany()
                .HasForeignKey(e => e.TemplateId)
                .OnDelete(DeleteBehavior.Restrict);
        });

        // VariableMapping configuration
        modelBuilder.Entity<VariableMapping>(entity =>
        {
            entity.ToTable("stlLayouts_VariableMapping");
            entity.HasKey(e => e.VariableMappingId);
            entity.Property(e => e.VariableName).IsRequired().HasMaxLength(200);
            entity.Property(e => e.DatabaseField).HasMaxLength(200);
            entity.Property(e => e.SqlExpression);

            entity.Property(e => e.MappingKind)
                .HasConversion<int>()
                .HasDefaultValue(MappingKind.Single);
            entity.Property(e => e.CollectionName).HasMaxLength(200);
            entity.Property(e => e.FieldKey).HasMaxLength(200);

            entity.Property(e => e.DataType).HasMaxLength(50);
            entity.Property(e => e.Category).HasMaxLength(100);
            entity.Property(e => e.Description).HasMaxLength(1000);
            entity.Property(e => e.CreatedBy).HasMaxLength(100);
            entity.Property(e => e.CreatedDate).HasDefaultValueSql("GETDATE()");

            entity.HasIndex(e => e.VariableName).IsUnique();
            entity.HasIndex(e => e.Category);
        });

        // AuditEntry configuration
        modelBuilder.Entity<AuditEntry>(entity =>
        {
            entity.ToTable("stlLayouts_AuditEntry");
            entity.HasKey(e => e.AuditEntryId);
            entity.Property(e => e.Timestamp).HasDefaultValueSql("GETDATE()");
            entity.Property(e => e.UserName).IsRequired().HasMaxLength(100);
            entity.Property(e => e.EventType).IsRequired().HasMaxLength(100);
            entity.Property(e => e.FilePath).HasMaxLength(500);
            entity.HasIndex(e => e.Timestamp);
            entity.HasIndex(e => e.UserName);
            entity.HasIndex(e => e.EventType);
        });

        // Job table is NOT managed by EF Core - it's read-only from CERM database via Dapper
        // No configuration needed here
    }
}
