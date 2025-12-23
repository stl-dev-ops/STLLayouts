using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;

namespace STLLayouts.Data;

public class DatabaseInitializer
{
    private readonly ApplicationDbContext _context;
    private readonly ILogger<DatabaseInitializer> _logger;

    public DatabaseInitializer(ApplicationDbContext context, ILogger<DatabaseInitializer> logger)
    {
        _context = context ?? throw new ArgumentNullException(nameof(context));
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));
    }

    public async Task InitializeAsync()
    {
        try
        {
            _logger.LogInformation("Starting database initialization");
            _logger.LogInformation("Using sqlb00 database with stlLayouts_ prefix for all application tables");

            // Ensure database schema exists
            await _context.Database.EnsureCreatedAsync();
            _logger.LogInformation("Database schema initialized (tables created if needed)");

            // Check if data already exists
            if (await _context.Templates.AnyAsync())
            {
                _logger.LogInformation("Database already seeded, skipping seed data");
                return;
            }

            await SeedDataAsync();
            _logger.LogInformation("Database initialization completed successfully");
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Database initialization error: {Message}", ex.Message);
            // Don't throw - allow app to continue even if templates can't be seeded
            // Job search will still work against CERM database
        }
    }

    private async Task SeedDataAsync()
    {
        _logger.LogInformation("Seeding database with sample data");

        // Seed Templates
        var templates = new[]
        {
            new Template
            {
                TemplateId = Guid.NewGuid(),
                TemplateName = "Work Order Form",
                Description = "Standard work order document for manufacturing jobs",
                Category = "Manufacturing",
                FileExtension = ".docx",
                FilePath = @"C:\Temp\Templates\WorkOrderTemplate.docx",
                CurrentVersion = 1,
                IsActive = true,
                UploadedBy = "System",
                UploadedDate = DateTime.UtcNow,
                Variables = new() { "JobNumber", "CustomerName", "ProductDescription", "Quantity", "DueDate" }
            },
            new Template
            {
                TemplateId = Guid.NewGuid(),
                TemplateName = "Shipping Label",
                Description = "Shipping label with customer and product information",
                Category = "Logistics",
                FileExtension = ".docx",
                FilePath = @"C:\Temp\Templates\ShippingLabelTemplate.docx",
                CurrentVersion = 1,
                IsActive = true,
                UploadedBy = "System",
                UploadedDate = DateTime.UtcNow,
                Variables = new() { "CustomerName", "JobNumber", "ShipDate", "Address" }
            },
            new Template
            {
                TemplateId = Guid.NewGuid(),
                TemplateName = "Quality Certificate",
                Description = "Quality assurance certificate for completed jobs",
                Category = "Quality",
                FileExtension = ".pdf",
                FilePath = @"C:\Temp\Templates\QualityCertTemplate.pdf",
                CurrentVersion = 1,
                IsActive = true,
                UploadedBy = "System",
                UploadedDate = DateTime.UtcNow,
                Variables = new() { "JobNumber", "ProductDescription", "InspectionDate", "ApprovedBy" }
            }
        };

        await _context.Templates.AddRangeAsync(templates);
        _logger.LogInformation("Added {Count} templates", templates.Length);

        // Seed Variable Mappings
        var variableMappings = new[]
        {
            new VariableMapping
            {
                VariableMappingId = Guid.NewGuid(),
                VariableName = "JobNumber",
                DatabaseField = "JobNumber",
                DataType = "String",
                Category = "Job Info",
                Description = "Unique job identifier",
                IsRequired = true,
                CreatedBy = "System",
                CreatedDate = DateTime.UtcNow
            },
            new VariableMapping
            {
                VariableMappingId = Guid.NewGuid(),
                VariableName = "CustomerName",
                DatabaseField = "CustomerName",
                DataType = "String",
                Category = "Job Info",
                Description = "Customer name",
                IsRequired = true,
                CreatedBy = "System",
                CreatedDate = DateTime.UtcNow
            },
            new VariableMapping
            {
                VariableMappingId = Guid.NewGuid(),
                VariableName = "ProductDescription",
                DatabaseField = "ProductDescription",
                DataType = "String",
                Category = "Job Info",
                Description = "Product description",
                IsRequired = true,
                CreatedBy = "System",
                CreatedDate = DateTime.UtcNow
            },
            new VariableMapping
            {
                VariableMappingId = Guid.NewGuid(),
                VariableName = "Quantity",
                DatabaseField = "Quantity",
                DataType = "Decimal",
                Category = "Job Info",
                Description = "Order quantity",
                IsRequired = false,
                DefaultValue = "0",
                CreatedBy = "System",
                CreatedDate = DateTime.UtcNow
            },
            new VariableMapping
            {
                VariableMappingId = Guid.NewGuid(),
                VariableName = "DueDate",
                DatabaseField = "DueDate",
                DataType = "DateTime",
                Category = "Job Info",
                Description = "Job due date",
                IsRequired = false,
                CreatedBy = "System",
                CreatedDate = DateTime.UtcNow
            },
            new VariableMapping
            {
                VariableMappingId = Guid.NewGuid(),
                VariableName = "JobStatus",
                DatabaseField = "JobStatus",
                DataType = "String",
                Category = "Job Info",
                Description = "Current job status",
                IsRequired = false,
                DefaultValue = "Pending",
                CreatedBy = "System",
                CreatedDate = DateTime.UtcNow
            },
            new VariableMapping
            {
                VariableMappingId = Guid.NewGuid(),
                VariableName = "OrderNumber",
                DatabaseField = "OrderNumber",
                DataType = "String",
                Category = "Job Info",
                Description = "Customer order number",
                IsRequired = false,
                CreatedBy = "System",
                CreatedDate = DateTime.UtcNow
            }
        };

        await _context.VariableMappings.AddRangeAsync(variableMappings);
        _logger.LogInformation("Added {Count} variable mappings", variableMappings.Length);

        // Seed Rules
        var rules = new[]
        {
            new Rule
            {
                RuleId = Guid.NewGuid(),
                RuleName = "Manufacturing Work Order",
                Description = "Select work order template for manufacturing jobs",
                Condition = "JobStatus == \"In Production\"",
                TemplateId = templates[0].TemplateId,
                Priority = 100,
                IsActive = true,
                CreatedBy = "System",
                CreatedDate = DateTime.UtcNow
            },
            new Rule
            {
                RuleId = Guid.NewGuid(),
                RuleName = "Shipping Label for Completed",
                Description = "Generate shipping label for completed jobs",
                Condition = "JobStatus == \"Completed\"",
                TemplateId = templates[1].TemplateId,
                Priority = 200,
                IsActive = true,
                CreatedBy = "System",
                CreatedDate = DateTime.UtcNow
            }
        };

        await _context.Rules.AddRangeAsync(rules);
        _logger.LogInformation("Added {Count} rules", rules.Length);

        // NOTE: Jobs are NOT seeded here - they are read from the CERM production database (sqlb00)
        // The application queries dbo_order___ table directly for real job data

        // Save all changes
        await _context.SaveChangesAsync();
        _logger.LogInformation("All seed data saved successfully");
    }
}
