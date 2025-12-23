# WPF MVVM Guide

## Overview

This guide provides WPF MVVM implementation patterns and best practices for the STL Layouts application.

---

## MVVM Pattern Overview

### Architecture Layers

```
View (XAML) ←→ ViewModel (C#) ←→ Model (Domain/Services)
```

- **View**: XAML UI definition
- **ViewModel**: Presentation logic, commands, data binding
- **Model**: Business logic, domain entities, services

### Key Principles

1. **Separation of Concerns**: UI, presentation logic, and business logic are separate
2. **Data Binding**: Views bind to ViewModel properties
3. **Commands**: User actions trigger ICommand implementations
4. **No Code-Behind**: Minimize or eliminate code in `.xaml.cs` files
5. **Testability**: ViewModels can be unit tested without UI

---

## Project Structure

```
STLLayouts.WpfApp/
├── App.xaml / App.xaml.cs       # Application entry point
├── ViewModels/
│   ├── ViewModelBase.cs          # Base class for all ViewModels
│   ├── MainViewModel.cs          # Main window ViewModel
│   ├── JobSelectionViewModel.cs
│   ├── TemplatePreviewViewModel.cs
│   ├── RuleConfigurationViewModel.cs
│   ├── VariableMappingViewModel.cs
│   └── AuditLogViewModel.cs
├── Views/
│   ├── MainWindow.xaml
│   ├── JobSelectionView.xaml
│   ├── TemplatePreviewView.xaml
│   ├── RuleConfigurationView.xaml
│   ├── VariableMappingView.xaml
│   └── AuditLogView.xaml
├── Commands/
│   ├── RelayCommand.cs           # ICommand implementation
│   └── AsyncRelayCommand.cs      # Async ICommand
├── Converters/
│   ├── BoolToVisibilityConverter.cs
│   ├── DateTimeFormatConverter.cs
│   └── ...
├── Behaviors/
│   ├── EventToCommandBehavior.cs
│   └── ...
├── Services/
│   ├── DialogService.cs
│   ├── NavigationService.cs
│   └── ...
└── Resources/
    ├── Styles.xaml                # Global styles
    ├── Colors.xaml                # Color resources
    └── Templates.xaml             # Control templates
```

---

## Base Classes

### ViewModelBase

```csharp
using System.ComponentModel;
using System.Runtime.CompilerServices;

public abstract class ViewModelBase : INotifyPropertyChanged
{
    public event PropertyChangedEventHandler PropertyChanged;

    protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }

    protected bool SetProperty<T>(ref T field, T value, [CallerMemberName] string propertyName = null)
    {
        if (EqualityComparer<T>.Default.Equals(field, value))
            return false;

        field = value;
        OnPropertyChanged(propertyName);
        return true;
    }
}
```

**Usage**:
```csharp
public class JobSelectionViewModel : ViewModelBase
{
    private string _searchText;
    public string SearchText
    {
        get => _searchText;
        set => SetProperty(ref _searchText, value);
    }
}
```

---

## Commands

### RelayCommand

```csharp
using System;
using System.Windows.Input;

public class RelayCommand : ICommand
{
    private readonly Action<object> _execute;
    private readonly Predicate<object> _canExecute;

    public RelayCommand(Action<object> execute, Predicate<object> canExecute = null)
    {
        _execute = execute ?? throw new ArgumentNullException(nameof(execute));
        _canExecute = canExecute;
    }

    public event EventHandler CanExecuteChanged
    {
        add => CommandManager.RequerySuggested += value;
        remove => CommandManager.RequerySuggested -= value;
    }

    public bool CanExecute(object parameter) => _canExecute == null || _canExecute(parameter);

    public void Execute(object parameter) => _execute(parameter);
}
```

### AsyncRelayCommand

```csharp
using System;
using System.Threading.Tasks;
using System.Windows.Input;

public class AsyncRelayCommand : ICommand
{
    private readonly Func<object, Task> _execute;
    private readonly Predicate<object> _canExecute;
    private bool _isExecuting;

    public AsyncRelayCommand(Func<object, Task> execute, Predicate<object> canExecute = null)
    {
        _execute = execute ?? throw new ArgumentNullException(nameof(execute));
        _canExecute = canExecute;
    }

    public event EventHandler CanExecuteChanged
    {
        add => CommandManager.RequerySuggested += value;
        remove => CommandManager.RequerySuggested -= value;
    }

    public bool CanExecute(object parameter)
    {
        return !_isExecuting && (_canExecute == null || _canExecute(parameter));
    }

    public async void Execute(object parameter)
    {
        _isExecuting = true;
        RaiseCanExecuteChanged();

        try
        {
            await _execute(parameter);
        }
        finally
        {
            _isExecuting = false;
            RaiseCanExecuteChanged();
        }
    }

    public void RaiseCanExecuteChanged()
    {
        CommandManager.InvalidateRequerySuggested();
    }
}
```

**Usage**:
```csharp
public class JobSelectionViewModel : ViewModelBase
{
    public ICommand SearchCommand { get; }
    public ICommand GenerateDocumentCommand { get; }

    public JobSelectionViewModel(IJobService jobService, IDocumentService documentService)
    {
        SearchCommand = new AsyncRelayCommand(
            execute: async _ => await SearchJobsAsync(),
            canExecute: _ => !string.IsNullOrWhiteSpace(SearchText)
        );

        GenerateDocumentCommand = new AsyncRelayCommand(
            execute: async _ => await GenerateDocumentAsync(),
            canExecute: _ => SelectedJob != null && SelectedTemplate != null
        );
    }

    private async Task SearchJobsAsync()
    {
        IsLoading = true;
        Jobs = await _jobService.SearchJobsAsync(SearchText);
        IsLoading = false;
    }

    private async Task GenerateDocumentAsync()
    {
        await _documentService.GenerateAsync(SelectedJob, SelectedTemplate);
    }
}
```

---

## ViewModel Examples

### MainViewModel

```csharp
public class MainViewModel : ViewModelBase
{
    private readonly INavigationService _navigationService;
    private ViewModelBase _currentViewModel;

    public ViewModelBase CurrentViewModel
    {
        get => _currentViewModel;
        set => SetProperty(ref _currentViewModel, value);
    }

    public ICommand NavigateToJobSelectionCommand { get; }
    public ICommand NavigateToRuleConfigurationCommand { get; }
    public ICommand NavigateToVariableMappingCommand { get; }

    public MainViewModel(
        INavigationService navigationService,
        JobSelectionViewModel jobSelectionViewModel,
        RuleConfigurationViewModel ruleConfigurationViewModel,
        VariableMappingViewModel variableMappingViewModel)
    {
        _navigationService = navigationService;

        NavigateToJobSelectionCommand = new RelayCommand(_ => CurrentViewModel = jobSelectionViewModel);
        NavigateToRuleConfigurationCommand = new RelayCommand(_ => CurrentViewModel = ruleConfigurationViewModel);
        NavigateToVariableMappingCommand = new RelayCommand(_ => CurrentViewModel = variableMappingViewModel);

        // Default view
        CurrentViewModel = jobSelectionViewModel;
    }
}
```

### JobSelectionViewModel

```csharp
public class JobSelectionViewModel : ViewModelBase
{
    private readonly IJobService _jobService;
    private readonly ITemplateService _templateService;
    private readonly IRuleEngineService _ruleEngineService;

    private string _searchText;
    private Job _selectedJob;
    private ObservableCollection<Job> _jobs;
    private ObservableCollection<Template> _suggestedTemplates;
    private bool _isLoading;

    public string SearchText
    {
        get => _searchText;
        set => SetProperty(ref _searchText, value);
    }

    public Job SelectedJob
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

    public ObservableCollection<Job> Jobs
    {
        get => _jobs;
        set => SetProperty(ref _jobs, value);
    }

    public ObservableCollection<Template> SuggestedTemplates
    {
        get => _suggestedTemplates;
        set => SetProperty(ref _suggestedTemplates, value);
    }

    public bool IsLoading
    {
        get => _isLoading;
        set => SetProperty(ref _isLoading, value);
    }

    public ICommand SearchCommand { get; }
    public ICommand GenerateDocumentCommand { get; }

    public JobSelectionViewModel(
        IJobService jobService,
        ITemplateService templateService,
        IRuleEngineService ruleEngineService)
    {
        _jobService = jobService;
        _templateService = templateService;
        _ruleEngineService = ruleEngineService;

        Jobs = new ObservableCollection<Job>();
        SuggestedTemplates = new ObservableCollection<Template>();

        SearchCommand = new AsyncRelayCommand(SearchJobsAsync);
        GenerateDocumentCommand = new AsyncRelayCommand(GenerateDocumentAsync);
    }

    private async Task SearchJobsAsync(object parameter)
    {
        IsLoading = true;
        try
        {
            var jobs = await _jobService.SearchJobsAsync(new JobSearchCriteria
            {
                JobNumber = SearchText
            });

            Jobs.Clear();
            foreach (var job in jobs)
            {
                Jobs.Add(job);
            }
        }
        finally
        {
            IsLoading = false;
        }
    }

    private async Task LoadSuggestedTemplatesAsync()
    {
        if (SelectedJob == null) return;

        var templates = await _ruleEngineService.EvaluateRulesAsync(SelectedJob);

        SuggestedTemplates.Clear();
        foreach (var template in templates)
        {
            SuggestedTemplates.Add(template);
        }
    }

    private async Task GenerateDocumentAsync(object parameter)
    {
        // Implementation
    }
}
```

---

## Data Binding

### Basic Property Binding

**XAML**:
```xml
<TextBox Text="{Binding SearchText, UpdateSourceTrigger=PropertyChanged}" />
```

### Command Binding

**XAML**:
```xml
<Button Content="Search" Command="{Binding SearchCommand}" />
```

### ItemsSource Binding

**XAML**:
```xml
<DataGrid ItemsSource="{Binding Jobs}" 
          SelectedItem="{Binding SelectedJob}"
          AutoGenerateColumns="False">
    <DataGrid.Columns>
        <DataGridTextColumn Header="Job Number" Binding="{Binding JobNumber}" />
        <DataGridTextColumn Header="Product" Binding="{Binding ProductDescription}" />
        <DataGridTextColumn Header="Customer" Binding="{Binding CustomerName}" />
    </DataGrid.Columns>
</DataGrid>
```

---

## Converters

### BoolToVisibilityConverter

```csharp
using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

public class BoolToVisibilityConverter : IValueConverter
{
    public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
    {
        if (value is bool boolValue)
        {
            return boolValue ? Visibility.Visible : Visibility.Collapsed;
        }
        return Visibility.Collapsed;
    }

    public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
    {
        if (value is Visibility visibility)
        {
            return visibility == Visibility.Visible;
        }
        return false;
    }
}
```

**XAML Usage**:
```xml
<Window.Resources>
    <local:BoolToVisibilityConverter x:Key="BoolToVisibilityConverter" />
</Window.Resources>

<ProgressBar Visibility="{Binding IsLoading, Converter={StaticResource BoolToVisibilityConverter}}" />
```

---

## Dependency Injection

### Service Registration (App.xaml.cs)

```csharp
using Microsoft.Extensions.DependencyInjection;
using System.Windows;

public partial class App : Application
{
    private ServiceProvider _serviceProvider;

    protected override void OnStartup(StartupEventArgs e)
    {
        base.OnStartup(e);

        var services = new ServiceCollection();
        ConfigureServices(services);
        _serviceProvider = services.BuildServiceProvider();

        var mainWindow = _serviceProvider.GetRequiredService<MainWindow>();
        mainWindow.Show();
    }

    private void ConfigureServices(IServiceCollection services)
    {
        // Services
        services.AddSingleton<IJobService, JobService>();
        services.AddSingleton<ITemplateService, TemplateService>();
        services.AddSingleton<IRuleEngineService, RuleEngineService>();
        services.AddSingleton<IDocumentGenerationService, DocumentGenerationService>();
        services.AddSingleton<IAuditService, AuditService>();

        // ViewModels
        services.AddTransient<MainViewModel>();
        services.AddTransient<JobSelectionViewModel>();
        services.AddTransient<RuleConfigurationViewModel>();
        services.AddTransient<VariableMappingViewModel>();

        // Views
        services.AddTransient<MainWindow>();

        // Database
        services.AddDbContext<ApplicationDbContext>(options =>
        {
            options.UseSqlServer("YourConnectionString");
        });
    }
}
```

---

## User Controls

### Creating a Reusable Control

**JobCardControl.xaml**:
```xml
<UserControl x:Class="STLLayouts.WpfApp.Controls.JobCardControl"
             xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
             xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml">
    <Border BorderBrush="Gray" BorderThickness="1" Padding="10" Margin="5">
        <StackPanel>
            <TextBlock Text="{Binding JobNumber}" FontWeight="Bold" FontSize="14" />
            <TextBlock Text="{Binding ProductDescription}" />
            <TextBlock Text="{Binding CustomerName}" FontStyle="Italic" />
        </StackPanel>
    </Border>
</UserControl>
```

**Usage**:
```xml
<ItemsControl ItemsSource="{Binding Jobs}">
    <ItemsControl.ItemTemplate>
        <DataTemplate>
            <local:JobCardControl DataContext="{Binding}" />
        </DataTemplate>
    </ItemsControl.ItemTemplate>
</ItemsControl>
```

---

## Navigation

### Simple Navigation Service

```csharp
public interface INavigationService
{
    void NavigateTo<TViewModel>() where TViewModel : ViewModelBase;
    void NavigateTo(ViewModelBase viewModel);
}

public class NavigationService : INavigationService
{
    private readonly Func<Type, ViewModelBase> _viewModelFactory;
    private readonly MainViewModel _mainViewModel;

    public NavigationService(Func<Type, ViewModelBase> viewModelFactory, MainViewModel mainViewModel)
    {
        _viewModelFactory = viewModelFactory;
        _mainViewModel = mainViewModel;
    }

    public void NavigateTo<TViewModel>() where TViewModel : ViewModelBase
    {
        var viewModel = _viewModelFactory(typeof(TViewModel));
        _mainViewModel.CurrentViewModel = viewModel;
    }

    public void NavigateTo(ViewModelBase viewModel)
    {
        _mainViewModel.CurrentViewModel = viewModel;
    }
}
```

---

## Dialog Service

### IDialogService

```csharp
public interface IDialogService
{
    Task<bool> ShowConfirmationAsync(string message, string title = "Confirm");
    Task ShowErrorAsync(string message, string title = "Error");
    Task ShowInformationAsync(string message, string title = "Information");
    Task<string> ShowInputDialogAsync(string prompt, string title = "Input");
}

public class DialogService : IDialogService
{
    public async Task<bool> ShowConfirmationAsync(string message, string title = "Confirm")
    {
        return await Task.Run(() =>
        {
            var result = MessageBox.Show(message, title, MessageBoxButton.YesNo, MessageBoxImage.Question);
            return result == MessageBoxResult.Yes;
        });
    }

    public async Task ShowErrorAsync(string message, string title = "Error")
    {
        await Task.Run(() =>
        {
            MessageBox.Show(message, title, MessageBoxButton.OK, MessageBoxImage.Error);
        });
    }

    public async Task ShowInformationAsync(string message, string title = "Information")
    {
        await Task.Run(() =>
        {
            MessageBox.Show(message, title, MessageBoxButton.OK, MessageBoxImage.Information);
        });
    }

    public async Task<string> ShowInputDialogAsync(string prompt, string title = "Input")
    {
        // Custom input dialog implementation
        return await Task.FromResult(string.Empty);
    }
}
```

---

## Best Practices

### 1. ViewModel Responsibilities

- **DO**: Expose properties for data binding
- **DO**: Implement commands for user actions
- **DO**: Call services for business logic
- **DON'T**: Reference UI elements (Button, TextBox, etc.)
- **DON'T**: Use `MessageBox.Show` directly (use DialogService)

### 2. Async Operations

- Use `AsyncRelayCommand` for async operations
- Show loading indicators during long operations
- Handle exceptions gracefully

**Example**:
```csharp
private async Task LoadDataAsync()
{
    IsLoading = true;
    ErrorMessage = null;

    try
    {
        var data = await _service.GetDataAsync();
        Data = new ObservableCollection<Item>(data);
    }
    catch (Exception ex)
    {
        ErrorMessage = $"Failed to load data: {ex.Message}";
        _logger.LogError(ex, "Error loading data");
    }
    finally
    {
        IsLoading = false;
    }
}
```

### 3. ObservableCollection

Use `ObservableCollection<T>` for collections that need UI updates:

```csharp
public ObservableCollection<Job> Jobs { get; set; } = new ObservableCollection<Job>();
```

### 4. Validation

Implement `IDataErrorInfo` or `INotifyDataErrorInfo` for validation:

```csharp
public class RuleViewModel : ViewModelBase, IDataErrorInfo
{
    public string RuleName { get; set; }

    public string Error => null;

    public string this[string columnName]
    {
        get
        {
            if (columnName == nameof(RuleName))
            {
                if (string.IsNullOrWhiteSpace(RuleName))
                    return "Rule name is required";
            }
            return null;
        }
    }
}
```

### 5. Dispose Pattern

Implement `IDisposable` for ViewModels with resources:

```csharp
public class JobSelectionViewModel : ViewModelBase, IDisposable
{
    private readonly Timer _timer;

    public void Dispose()
    {
        _timer?.Dispose();
    }
}
```

---

## Testing ViewModels

### Unit Test Example

```csharp
using Xunit;
using Moq;

public class JobSelectionViewModelTests
{
    [Fact]
    public async Task SearchCommand_ShouldLoadJobs()
    {
        // Arrange
        var mockJobService = new Mock<IJobService>();
        mockJobService.Setup(s => s.SearchJobsAsync(It.IsAny<JobSearchCriteria>()))
            .ReturnsAsync(new List<Job> { new Job { JobNumber = "12345" } });

        var viewModel = new JobSelectionViewModel(mockJobService.Object, null, null);
        viewModel.SearchText = "12345";

        // Act
        await viewModel.SearchCommand.ExecuteAsync(null);

        // Assert
        Assert.Single(viewModel.Jobs);
        Assert.Equal("12345", viewModel.Jobs[0].JobNumber);
    }
}
```

---

**Next Steps**: See [API.md](API.md) for future API integration patterns.
