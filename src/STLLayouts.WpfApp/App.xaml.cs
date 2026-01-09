using System.IO;
using System.Windows;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Serilog;
using STLLayouts.Core.Interfaces;
using STLLayouts.Data;
using STLLayouts.Data.Repositories;
using STLLayouts.OfficeGen;
using STLLayouts.RuleEngine;
using STLLayouts.Services;
using STLLayouts.WpfApp.Theming;
using STLLayouts.WpfApp.ViewModels;
using STLLayouts.WpfApp.Views;

namespace STLLayouts.WpfApp;

/// <summary>
/// Interaction logic for App.xaml
/// </summary>
public partial class App : Application
{
    private ServiceProvider? _serviceProvider;
    public IConfiguration? Configuration { get; private set; }
    public static new App Current => (App)Application.Current;
    public System.IServiceProvider Services => _serviceProvider!;

    protected override async void OnStartup(StartupEventArgs e)
    {
        base.OnStartup(e);

        // Load configuration
        var builder = new ConfigurationBuilder()
            .SetBasePath(Directory.GetCurrentDirectory())
            .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
            .AddJsonFile($"appsettings.{Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT") ?? "Development"}.json", optional: true)
            .AddEnvironmentVariables();

        Configuration = builder.Build();

        // Configure Serilog
        Log.Logger = new LoggerConfiguration()
            .ReadFrom.Configuration(Configuration)
            .CreateLogger();

        // Apply Telerik Fluent dark mode (Telerik-supported API surface varies by version;
        // we bind via reflection so upgrades don't break compilation).
        TelerikThemeBootstrapper.ApplyFluentDarkIfAvailable();

        // Keep App*Brush tokens consistent with live Telerik theme surfaces (main window + dialogs).
        TelerikThemeBridge.AttachToApplication(this);

        // Telerik GridView filtering defaults (global): hide Match Case + force case-insensitive where supported.
        RadGridViewFilterDefaults.ApplyToApplication(this);

        try
        {
            Log.Information("Starting STL Layouts application");

            // Configure services
            var services = new ServiceCollection();
            ConfigureServices(services);

            _serviceProvider = services.BuildServiceProvider();

            // Initialize database asynchronously without blocking UI thread
            await InitializeDatabaseAsync();

            // Show main window
            var mainWindow = _serviceProvider.GetRequiredService<MainWindow>();
            TelerikThemeBridge.AttachToWindow(mainWindow);
            mainWindow.Show();
        }
        catch (Exception ex)
        {
            Log.Fatal(ex, "Application startup failed");
            MessageBox.Show($"Application startup failed: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            Shutdown();
        }
    }

    private void ConfigureServices(IServiceCollection services)
    {
        // Configuration
        services.AddSingleton(Configuration!);

        // Logging
        services.AddLogging(loggingBuilder => loggingBuilder.AddSerilog(dispose: true));

        // Database contexts - Use CRM database for all application data (templates, rules, audit logs, etc.)
        // All tables use stlLayouts_ prefix in sqlb00 database
        var crmConnectionString = Configuration!.GetConnectionString("CRMDatabase");

        services.AddDbContextFactory<ApplicationDbContext>(options =>
            options.UseSqlServer(crmConnectionString));

        services.AddDbContext<ApplicationDbContext>(options =>
            options.UseSqlServer(crmConnectionString));

        // Database Initializer
        services.AddTransient<DatabaseInitializer>();

        // Repositories
        services.AddScoped<ITemplateRepository, TemplateRepository>();
        services.AddScoped<IRuleRepository, RuleRepository>();
        services.AddScoped<IVariableMappingRepository, VariableMappingRepository>();

        // Services
        Log.Information("CRM Connection String: {ConnectionString}", crmConnectionString);
        services.AddScoped<IJobService>(provider =>
            new JobService(crmConnectionString!, provider.GetService<ILogger<JobService>>()));

        services.AddScoped<IContextSchemaService>(_ => new ContextSchemaService(crmConnectionString!));
        services.AddScoped<ICollectionDataService>(provider =>
            new CollectionDataService(crmConnectionString!, provider.GetRequiredService<ILogger<CollectionDataService>>()));

        services.AddScoped<IAuditService, AuditService>();
        services.AddScoped<IRuleEngineService, RuleEngineService>();
        services.AddScoped<ITemplateService, TemplateService>();
        services.AddScoped<IVariableMappingService, VariableMappingService>();
        services.AddScoped<IDocumentGenerationService, DocumentGenerationService>();
        
        // Document generators
        services.AddScoped<IDocumentGenerator, WordDocumentGenerator>();
        services.AddScoped<IDocumentGenerator, ExcelDocumentGenerator>();
        services.AddScoped<IDocumentGenerator, PdfDocumentGenerator>();
        
        // ViewModels
        services.AddTransient<JobSelectionViewModel>();
        services.AddTransient<TemplateSelectionViewModel>();
        services.AddTransient<VariableMapViewModel>();
        services.AddTransient<CreateVariableViewModel>();
        services.AddTransient<DocumentPreviewViewModel>();
        services.AddTransient<SettingsViewModel>();

        // Views
        services.AddTransient<TemplateSelectionView>();
        services.AddTransient<VariableMapView>();
        services.AddTransient<DocumentPreviewView>();
        services.AddTransient<SettingsView>();

        // Windows
        services.AddTransient<MainWindow>();
    }

    private async Task InitializeDatabaseAsync()
    {
        try
        {
            using var scope = _serviceProvider!.CreateScope();
            var initializer = scope.ServiceProvider.GetRequiredService<DatabaseInitializer>();
            await initializer.InitializeAsync();
        }
        catch (Exception ex)
        {
            Log.Error(ex, "Database initialization failed");
            MessageBox.Show($"Database initialization failed: {ex.Message}", "Database Error", MessageBoxButton.OK, MessageBoxImage.Error);
        }
    }

    protected override void OnExit(ExitEventArgs e)
    {
        Log.Information("Application shutting down");
        Log.CloseAndFlush();
        _serviceProvider?.Dispose();
        base.OnExit(e);
    }
}

