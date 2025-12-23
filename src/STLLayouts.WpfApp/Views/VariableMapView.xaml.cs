using System.Windows.Controls;
using STLLayouts.WpfApp.ViewModels;

namespace STLLayouts.WpfApp.Views;

/// <summary>
/// Interaction logic for VariableMapView.xaml
/// </summary>
public partial class VariableMapView : UserControl
{
    public VariableMapView(VariableMapViewModel viewModel)
    {
        InitializeComponent();
        DataContext = viewModel;
    }

    private async void UserControl_Loaded(object sender, System.Windows.RoutedEventArgs e)
    {
        if (DataContext is VariableMapViewModel viewModel)
        {
            // Small delay to avoid concurrent DbContext access with other views
            await Task.Delay(100);
            await viewModel.LoadMappingsAsync();
        }
    }

    private async void UserControl_IsVisibleChanged(object sender, System.Windows.DependencyPropertyChangedEventArgs e)
    {
        if (IsVisible && DataContext is VariableMapViewModel viewModel && viewModel.VariableMappings.Count == 0)
        {
            await viewModel.LoadMappingsAsync();
        }
    }
}
