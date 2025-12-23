using System.Windows.Controls;
using STLLayouts.WpfApp.ViewModels;

namespace STLLayouts.WpfApp.Views;

/// <summary>
/// Interaction logic for SettingsView.xaml
/// </summary>
public partial class SettingsView : UserControl
{
    public SettingsView(SettingsViewModel viewModel)
    {
        InitializeComponent();
        DataContext = viewModel;
    }
}
