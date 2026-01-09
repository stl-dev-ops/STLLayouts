using System.Windows;
using STLLayouts.WpfApp.Theming;
using STLLayouts.WpfApp.ViewModels;

namespace STLLayouts.WpfApp.Views;

public partial class EditVariableDialog : Window
{
    public EditVariableDialog(EditVariableViewModel viewModel)
    {
        InitializeComponent();
        DataContext = viewModel;

        Loaded += (_, __) => UiBrushProbe.Probe(this, "Dialog:EditVariableDialog");
        viewModel.CloseRequested += (s, e) => DialogResult = true;
    }

    private void Cancel_Click(object sender, RoutedEventArgs e)
    {
        DialogResult = false;
    }
}
