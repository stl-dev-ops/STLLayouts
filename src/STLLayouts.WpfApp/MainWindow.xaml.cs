using System.Threading.Tasks;
using System.Windows;
using STLLayouts.WpfApp.ViewModels;
using STLLayouts.WpfApp.Views;

namespace STLLayouts.WpfApp;

/// <summary>
/// Interaction logic for MainWindow.xaml
/// </summary>
public partial class MainWindow : Window
{
    public MainWindow(
        JobSelectionViewModel jobSelectionViewModel,
        TemplateSelectionView templateSelectionView,
        VariableMapView variableMapView,
        DocumentPreviewView documentPreviewView,
        SettingsView settingsView)
    {
        InitializeComponent();
        DataContext = jobSelectionViewModel;
        
        // Set the view instances for the tabs
        TemplateTab.Content = templateSelectionView;
        VariableMappingsTab.Content = variableMapView;
        DocumentPreviewTab.Content = documentPreviewView;
        SettingsTab.Content = settingsView;
    }

    private async void Window_Loaded(object sender, RoutedEventArgs e)
    {
        if (DataContext is JobSelectionViewModel jobSelectionViewModel)
        {
            await jobSelectionViewModel.InitialLoadAsync();
        }
    }
}