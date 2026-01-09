using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Media;
using Telerik.Windows.Controls;
using STLLayouts.WpfApp.ViewModels;
using STLLayouts.WpfApp.Theming;

namespace STLLayouts.WpfApp.Views;

public partial class CreateVariableDialog : Window
{
    public CreateVariableDialog(CreateVariableViewModel viewModel)
    {
        InitializeComponent();
        DataContext = viewModel;
        viewModel.CloseRequested += (s, e) => DialogResult = true;

        Loaded += (_, __) =>
        {
            UiBrushProbe.Probe(this, "Dialog:CreateVariableDialog");
            ProbeCategoryCombo("Loaded");

            CategoryCombo.DropDownOpened += (_, __) => ProbeCategoryCombo("DropDownOpened");
        };
    }

    private void ProbeCategoryCombo(string phase)
    {
        try
        {
            UiBrushProbe.Probe(CategoryCombo, $"CreateVariableDialog.CategoryCombo:{phase}");

            // Editor (editable text area) - find the first TextBox under the combo.
            var editorTextBox = FindFirstChild<TextBox>(CategoryCombo);
            if (editorTextBox != null)
            {
                UiBrushProbe.Probe(editorTextBox, $"CreateVariableDialog.CategoryCombo.EditorTextBox:{phase}");
            }

            // Popup root if it's a WPF Popup somewhere below the combo.
            var popupRoot = FindFirstChild<Popup>(CategoryCombo);
            if (popupRoot?.Child is FrameworkElement popupChild)
            {
                UiBrushProbe.Probe(popupChild, $"CreateVariableDialog.CategoryCombo.PopupChild:{phase}");

                var border = FindFirstChild<Border>(popupChild);
                if (border != null)
                {
                    UiBrushProbe.Probe(border, $"CreateVariableDialog.CategoryCombo.PopupBorder:{phase}");
                }

                var itemsHost = FindFirstChild<ItemsControl>(popupChild);
                if (itemsHost != null)
                {
                    UiBrushProbe.Probe(itemsHost, $"CreateVariableDialog.CategoryCombo.PopupItemsHost:{phase}");
                }
            }

            // Log relevant application resources (what we *think* the tokens are).
            LogKnownBrush("AppBackgroundBrush");
            LogKnownBrush("AppSurfaceBrush");
            LogKnownBrush("AppForegroundBrush");
            LogKnownBrush("AppBorderBrush");
        }
        catch
        {
            // best-effort only
        }
    }

    private static void LogKnownBrush(string key)
    {
        try
        {
            if (Application.Current?.Resources[key] is Brush b)
            {
                Serilog.Log.Information("UI brush probe: App.Resources[{Key}]={BrushType}", key, b.GetType().Name);
                if (b is SolidColorBrush scb)
                {
                    Serilog.Log.Information("UI brush probe: App.Resources[{Key}]={Color}", key, scb.Color.ToString());
                }
            }
            else
            {
                Serilog.Log.Information("UI brush probe: App.Resources[{Key}]=<missing or non-brush>", key);
            }
        }
        catch
        {
        }
    }

    private static T? FindFirstChild<T>(DependencyObject root) where T : DependencyObject
    {
        if (root == null)
        {
            return null;
        }

        if (root is T typedRoot)
        {
            return typedRoot;
        }

        var count = VisualTreeHelper.GetChildrenCount(root);
        for (var i = 0; i < count; i++)
        {
            var child = VisualTreeHelper.GetChild(root, i);
            var found = FindFirstChild<T>(child);
            if (found != null)
            {
                return found;
            }
        }

        return null;
    }

    private void Cancel_Click(object sender, RoutedEventArgs e)
    {
        DialogResult = false;
    }
}
