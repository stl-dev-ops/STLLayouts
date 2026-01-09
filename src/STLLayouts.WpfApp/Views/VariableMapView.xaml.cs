using System.Windows.Controls;
using Telerik.Windows.Controls;
using Telerik.Windows.Controls.GridView;
using STLLayouts.Core.Entities;
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

    private async void RadGridView_CellEditEnded(object sender, GridViewCellEditEndedEventArgs e)
    {
        if (DataContext is not VariableMapViewModel viewModel)
        {
            return;
        }

        if (e.EditAction != GridViewEditAction.Commit)
        {
            return;
        }

        // Only persist when the Required column was edited.
        if (e.Cell?.Column?.Header?.ToString() is not "Required")
        {
            return;
        }

        if (e.Cell?.ParentRow?.Item is not VariableMapping mapping)
        {
            return;
        }

        // Save only the row that changed.
        var previousSelection = viewModel.SelectedMapping;
        viewModel.SelectedMapping = mapping;
        await viewModel.SaveMappingAsync();
        viewModel.SelectedMapping = previousSelection;
    }
}
