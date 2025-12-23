using System.Windows.Controls;
using STLLayouts.WpfApp.ViewModels;

namespace STLLayouts.WpfApp.Views;

/// <summary>
/// Interaction logic for TemplateSelectionView.xaml
/// </summary>
public partial class TemplateSelectionView : UserControl
{
    public TemplateSelectionView(TemplateSelectionViewModel viewModel)
    {
        InitializeComponent();
        DataContext = viewModel;
    }

    private async void UserControl_Loaded(object sender, System.Windows.RoutedEventArgs e)
    {
        if (DataContext is TemplateSelectionViewModel viewModel)
        {
            await viewModel.LoadTemplatesAsync();
        }
    }
}
