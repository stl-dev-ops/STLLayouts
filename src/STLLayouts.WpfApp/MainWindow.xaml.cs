using System;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media;
using Serilog;
using STLLayouts.WpfApp.Theming;
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

        try
        {
            UiBrushProbe.Probe(this, "MainWindow");

            if (RootGrid != null)
                UiBrushProbe.Probe(RootGrid, "MainWindow.RootGrid");

            if (MainTabs != null)
            {
                UiBrushProbe.Probe(MainTabs, "MainWindow.MainTabs");

                foreach (var item in MainTabs.Items.OfType<object>().ToList())
                {
                    if (item is FrameworkElement fe)
                        AttachProbeOnLoaded(fe, $"TabItem:{fe.GetType().Name}");
                }

                // Probe current selected content (if already materialized)
                if (MainTabs.SelectedContent is FrameworkElement selectedContent)
                {
                    UiBrushProbe.Probe(selectedContent, "MainWindow.MainTabs.SelectedContent");
                }

                // Walk visual tree (reasonable limit) to find common Telerik surfaces.
                foreach (var grid in FindVisualDescendantsByTypeName(RootGrid ?? (DependencyObject)MainTabs, "RadGridView").Take(10).OfType<FrameworkElement>())
                {
                    UiBrushProbe.Probe(grid, "RadGridView");
                }

                foreach (var tabs in FindVisualDescendantsByTypeName(RootGrid ?? (DependencyObject)MainTabs, "RadTabControl").Take(3).OfType<FrameworkElement>())
                {
                    UiBrushProbe.Probe(tabs, "RadTabControl");
                }
            }
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "UI brush probe: failed during Window_Loaded");
        }
    }

    private static void AttachProbeOnLoaded(FrameworkElement element, string label)
    {
        if (element == null)
            return;

        RoutedEventHandler? handler = null;
        handler = (_, __) =>
        {
            element.Loaded -= handler;
            UiBrushProbe.Probe(element, label);
        };

        element.Loaded += handler;
    }

    private static System.Collections.Generic.IEnumerable<DependencyObject> FindVisualDescendantsByTypeName(DependencyObject root, string typeName)
    {
        if (root == null)
            yield break;

        var count = VisualTreeHelper.GetChildrenCount(root);
        for (var i = 0; i < count; i++)
        {
            var child = VisualTreeHelper.GetChild(root, i);
            if (child == null)
                continue;

            if (string.Equals(child.GetType().Name, typeName, StringComparison.Ordinal))
                yield return child;

            foreach (var desc in FindVisualDescendantsByTypeName(child, typeName))
                yield return desc;
        }
    }
}