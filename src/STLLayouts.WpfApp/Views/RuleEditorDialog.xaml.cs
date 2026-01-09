using System.Windows;
using STLLayouts.WpfApp.Theming;
using STLLayouts.WpfApp.ViewModels;

namespace STLLayouts.WpfApp.Views
{
    public partial class RuleEditorDialog : Window
    {
        public RuleEditorDialog()
        {
            InitializeComponent();
            Loaded += OnLoaded;
            Loaded += (_, __) => UiBrushProbe.Probe(this, "Dialog:RuleEditorDialog");
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private async void OnLoaded(object sender, RoutedEventArgs e)
        {
            if (DataContext is RuleEditorViewModel vm)
            {
                try
                {
                    await vm.InitializeAsync();
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Failed to load rules: {ex.Message}");
                }
            }
        }
    }
}
