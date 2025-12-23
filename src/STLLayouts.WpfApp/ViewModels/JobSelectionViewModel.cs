using System.Collections.ObjectModel;
using System.Windows.Input;
using Microsoft.Extensions.Logging;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;
using STLLayouts.WpfApp.Commands;

namespace STLLayouts.WpfApp.ViewModels;

public class JobSelectionViewModel : ViewModelBase
{
    private readonly IJobService _jobService;
    private readonly IRuleEngineService _ruleEngineService;
    private readonly IDocumentGenerationService _documentGenerationService;
    private readonly IAuditService _auditService;
    private readonly ILogger<JobSelectionViewModel>? _logger;

    private string _jobNumber = string.Empty;
    private string _customerName = string.Empty;
    private Job? _selectedJob;
    private bool _isLoading;
    private string _statusMessage = string.Empty;

    public JobSelectionViewModel(
        IJobService jobService,
        IRuleEngineService ruleEngineService,
        IDocumentGenerationService documentGenerationService,
        IAuditService auditService,
        ILogger<JobSelectionViewModel>? logger = null)
    {
        _jobService = jobService;
        _ruleEngineService = ruleEngineService;
        _documentGenerationService = documentGenerationService;
        _auditService = auditService;
        _logger = logger;

        Jobs = new ObservableCollection<Job>();
        SuggestedTemplates = new ObservableCollection<Template>();

        SearchCommand = new AsyncRelayCommand(async _ => await SearchJobsAsync());
        GenerateDocumentCommand = new AsyncRelayCommand(async _ => await GenerateDocumentAsync(), _ => SelectedJob != null);
    }

    public ObservableCollection<Job> Jobs { get; }
    public ObservableCollection<Template> SuggestedTemplates { get; }

    public string JobNumber
    {
        get => _jobNumber;
        set => SetProperty(ref _jobNumber, value);
    }

    public string CustomerName
    {
        get => _customerName;
        set => SetProperty(ref _customerName, value);
    }

    public Job? SelectedJob
    {
        get => _selectedJob;
        set
        {
            if (SetProperty(ref _selectedJob, value))
            {
                _ = LoadSuggestedTemplatesAsync();
            }
        }
    }

    public bool IsLoading
    {
        get => _isLoading;
        set => SetProperty(ref _isLoading, value);
    }

    public string StatusMessage
    {
        get => _statusMessage;
        set => SetProperty(ref _statusMessage, value);
    }

    public ICommand SearchCommand { get; }
    public ICommand GenerateDocumentCommand { get; }

    /// <summary>
    /// Performs the initial job load so the grid is populated without manual search.
    /// </summary>
    public Task InitialLoadAsync() => SearchJobsAsync();

    private async Task SearchJobsAsync()
    {
        try
        {
            IsLoading = true;
            StatusMessage = "Searching for jobs...";
            _logger?.LogInformation("User initiated job search: JobNumber={JobNumber}, CustomerName={CustomerName}", 
                JobNumber, CustomerName);

            var criteria = new JobSearchCriteria
            {
                JobNumber = JobNumber,
                CustomerName = CustomerName,
                PageSize = 50,
                PageNumber = 1
            };

            var jobs = await _jobService.SearchJobsAsync(criteria);

            Jobs.Clear();
            foreach (var job in jobs)
            {
                Jobs.Add(job);
            }

            StatusMessage = $"Found {jobs.Count} job(s)";
            _logger?.LogInformation("Job search completed: Found {Count} jobs", jobs.Count);

            await _auditService.LogAsync(
                "JobSearch",
                Environment.UserName,
                $"Searched jobs: JobNumber={JobNumber}, Customer={CustomerName}, Results={jobs.Count}",
                true);
        }
        catch (Exception ex)
        {
            _logger?.LogError(ex, "Error during job search: {Message}", ex.Message);
            StatusMessage = $"Error: {ex.Message}";
            await _auditService.LogAsync(
                "JobSearchError",
                Environment.UserName,
                $"Error searching jobs: {ex.Message}",
                false);
        }
        finally
        {
            IsLoading = false;
        }
    }

    private async Task LoadSuggestedTemplatesAsync()
    {
        if (SelectedJob == null)
        {
            SuggestedTemplates.Clear();
            return;
        }

        try
        {
            IsLoading = true;
            StatusMessage = "Loading suggested templates...";
            _logger?.LogInformation("Loading suggested templates for job {JobNumber} - {ProductDescription}", SelectedJob.JobNumber, SelectedJob.ProductDescription);

            var ruleMatches = await _ruleEngineService.EvaluateRulesAsync(SelectedJob);
            _logger?.LogInformation("Rule evaluation returned {MatchCount} rule matches", ruleMatches.Count);
            
            foreach (var match in ruleMatches)
            {
                _logger?.LogInformation("Rule: {RuleName}, Matched: {Matched}, Template: {TemplateName}", 
                    match.Rule.RuleName, match.Matched, match.Template?.TemplateName ?? "N/A");
            }
            
            var matchedTemplates = ruleMatches
                .Where(m => m.Matched)
                .Select(m => m.Template)
                .Distinct()
                .ToList();
            
            _logger?.LogInformation("Filtered to {TemplateCount} matched templates", matchedTemplates.Count);

            SuggestedTemplates.Clear();
            foreach (var template in matchedTemplates)
            {
                SuggestedTemplates.Add(template);
            }

            StatusMessage = $"Found {matchedTemplates.Count} matching template(s)";

            await _auditService.LogAsync(
                "TemplateSuggestion",
                Environment.UserName,
                $"Generated template suggestions for Job {SelectedJob.JobNumber}: {matchedTemplates.Count} matches",
                true);
        }
        catch (Exception ex)
        {
            _logger?.LogError(ex, "Error loading suggested templates");
            StatusMessage = $"Error: {ex.Message}";
        }
        finally
        {
            IsLoading = false;
        }
    }

    private async Task GenerateDocumentAsync()
    {
        if (SelectedJob == null)
            return;

        try
        {
            IsLoading = true;
            StatusMessage = "Generating document...";

            var options = new DocumentGenerationOptions
            {
                OutputPath = System.IO.Path.Combine(System.IO.Path.GetTempPath(), "STLLayouts"),
                ConvertToPdf = true,
                PreserveFormatting = true
            };

            // Generate for all suggested templates
            var templates = SuggestedTemplates.ToList();
            var generatedDocs = await _documentGenerationService.GenerateDocumentsAsync(
                SelectedJob,
                templates,
                options);

            StatusMessage = $"Successfully generated {generatedDocs.Count} document(s)";

            await _auditService.LogAsync(
                "DocumentGeneration",
                Environment.UserName,
                $"Generated {generatedDocs.Count} documents for Job {SelectedJob.JobNumber}",
                true);
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error: {ex.Message}";
            await _auditService.LogAsync(
                "DocumentGenerationError",
                Environment.UserName,
                $"Error generating document: {ex.Message}",
                false);
        }
        finally
        {
            IsLoading = false;
        }
    }
}
