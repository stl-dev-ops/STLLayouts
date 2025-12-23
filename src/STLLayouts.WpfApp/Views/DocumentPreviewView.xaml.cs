using System.Windows.Controls;
using STLLayouts.WpfApp.ViewModels;

namespace STLLayouts.WpfApp.Views;

/// <summary>
/// Interaction logic for DocumentPreviewView.xaml
/// </summary>
public partial class DocumentPreviewView : UserControl
{
    public DocumentPreviewView(DocumentPreviewViewModel viewModel)
    {
        InitializeComponent();
        DataContext = viewModel;
    }
}
