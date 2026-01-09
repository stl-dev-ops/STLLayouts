using System;
using System.Windows;
using System.Windows.Media;
using Serilog;

namespace STLLayouts.WpfApp.Theming;

internal static class TelerikThemeBridge
{
    public static void AttachToApplication(Application app)
    {
        if (app == null)
            return;

        // Keep the app brush tokens in sync with what Telerik is actually painting.
        // This runs whenever any Window is activated, which is the point where
        // Telerik styles/templates are guaranteed to be applied.
        app.Activated += (_, __) =>
        {
            try
            {
                foreach (Window w in app.Windows)
                {
                    TrySyncFromLiveWindow(w);
                }
            }
            catch (Exception ex)
            {
                Log.Debug(ex, "Telerik theming bridge: failed during Application.Activated sync");
            }
        };
    }

    public static void AttachToWindow(Window window)
    {
        if (window == null)
            return;

        // Ensure we sync once the visuals exist.
        window.Loaded += (_, __) =>
        {
            TrySyncFromLiveWindow(window);
        };

        // If the user changes theme at runtime, activation is a reliable place to refresh.
        window.Activated += (_, __) =>
        {
            TrySyncFromLiveWindow(window);
        };
    }

    private static void TrySyncFromLiveWindow(Window window)
    {
        try
        {
            var app = Application.Current;
            if (app?.Resources == null)
                return;

            // The app defines its own dark palette tokens.
            // Do not overwrite them with theme-derived values.
            // (The Fluent dictionaries in this Telerik build report #FFFFFFFF for several 'background' keys)
            if (app.Resources["AppBackgroundBrush"] is SolidColorBrush { Color.A: 0xFF })
            {
                return;
            }

            // Only override if AppBackgroundBrush is missing or fully transparent.
            if (IsUsableBackground(app.Resources["AppBackgroundBrush"] as Brush))
                return;

            // Prefer a live RadTabControl background if present.
            if (FindFirstByTypeName(window, "RadTabControl") is FrameworkElement tabs)
            {
                var bg = ReadBrushDp(tabs, "Background");
                if (IsUsableBackground(bg))
                {
                    app.Resources["AppBackgroundBrush"] = bg!;
                    Log.Information("Telerik theming bridge: AppBackgroundBrush <= live RadTabControl.Background ({Type})", bg!.GetType().Name);
                    return;
                }
            }

            // Next best: live RadGridView background.
            if (FindFirstByTypeName(window, "RadGridView") is FrameworkElement grid)
            {
                var bg = ReadBrushDp(grid, "Background");
                if (IsUsableBackground(bg))
                {
                    app.Resources["AppBackgroundBrush"] = bg!;
                    Log.Information("Telerik theming bridge: AppBackgroundBrush <= live RadGridView.Background ({Type})", bg!.GetType().Name);
                    return;
                }
            }
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "Telerik theming bridge: failed syncing from live window");
        }
    }

    private static bool IsUsableBackground(Brush? brush)
    {
        if (brush == null)
            return false;

        if (brush.Opacity <= 0)
            return false;

        if (brush is SolidColorBrush scb)
            return scb.Color.A != 0;

        return true;
    }

    private static DependencyObject? FindFirstByTypeName(DependencyObject root, string typeName)
    {
        if (root == null)
            return null;

        if (string.Equals(root.GetType().Name, typeName, StringComparison.Ordinal))
            return root;

        var count = VisualTreeHelper.GetChildrenCount(root);
        for (var i = 0; i < count; i++)
        {
            var child = VisualTreeHelper.GetChild(root, i);
            if (child == null)
                continue;

            var found = FindFirstByTypeName(child, typeName);
            if (found != null)
                return found;
        }

        return null;
    }

    private static Brush? ReadBrushDp(DependencyObject obj, string propertyName)
    {
        var dp = FindDependencyProperty(obj.GetType(), propertyName);
        if (dp == null)
            return null;

        return obj.GetValue(dp) as Brush;
    }

    private static DependencyProperty? FindDependencyProperty(Type type, string propertyName)
    {
        while (type != null)
        {
            var field = type.GetField(propertyName + "Property", System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Static);
            if (field?.GetValue(null) is DependencyProperty dp)
                return dp;

            type = type.BaseType!;
        }

        return null;
    }
}
