using System.Windows;
using STLLayouts.WpfApp.ViewModels;

namespace STLLayouts.WpfApp.Views;

public partial class CreateVariableDialog : Window
{
    public CreateVariableDialog(CreateVariableViewModel viewModel)
    {
        InitializeComponent();
        DataContext = viewModel;
        viewModel.CloseRequested += (s, e) => DialogResult = true;
    }

    private void Cancel_Click(object sender, RoutedEventArgs e)
    {
        DialogResult = false;
    }
}
