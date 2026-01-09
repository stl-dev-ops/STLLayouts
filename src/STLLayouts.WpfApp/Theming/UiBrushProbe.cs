using System;
using System.Linq;
using System.Windows;
using System.Windows.Media;
using Serilog;

namespace STLLayouts.WpfApp.Theming;

internal static class UiBrushProbe
{
    public static void Probe(FrameworkElement element, string label)
    {
        if (element == null)
        {
            Log.Information("UI brush probe: {Label}: <null>", label);
            return;
        }

        var scope = $"{label} ({element.GetType().Name}#{(string.IsNullOrWhiteSpace(element.Name) ? "<no-name>" : element.Name)})";

        Log.Information("UI brush probe: {Scope} Loaded (ActualWidth={W}, ActualHeight={H})", scope, element.ActualWidth, element.ActualHeight);

        // Only some elements expose Background/BorderBrush. We probe common DPs by name.
        LogDependencyPropertyBrush(element, scope, "Background");
        LogDependencyPropertyBrush(element, scope, "BorderBrush");
        LogDependencyPropertyBrush(element, scope, "Foreground");

        // For Telerik controls, these may exist:
        LogDependencyPropertyBrush(element, scope, "HeaderBackground");
        LogDependencyPropertyBrush(element, scope, "HeaderBorderBrush");
        LogDependencyPropertyBrush(element, scope, "RowBackground");
        LogDependencyPropertyBrush(element, scope, "AlternationRowBackground");
        LogDependencyPropertyBrush(element, scope, "Selection");
    }

    private static void LogDependencyPropertyBrush(DependencyObject obj, string scope, string propertyName)
    {
        var dp = FindDependencyProperty(obj.GetType(), propertyName);
        if (dp == null)
            return;

        try
        {
            var value = obj.GetValue(dp);
            switch (value)
            {
                case null:
                    Log.Information("UI brush probe: {Scope}: {Property}=<null>", scope, propertyName);
                    break;
                case Brush b:
                    LogBrush(scope, propertyName, b);
                    break;
                default:
                    if (value is Color c)
                    {
                        Log.Information("UI brush probe: {Scope}: {Property}=Color {Color}", scope, propertyName, c.ToString());
                    }
                    break;
            }
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "UI brush probe: {Scope}: failed reading {Property}", scope, propertyName);
        }
    }

    private static void LogBrush(string scope, string propertyName, Brush brush)
    {
        switch (brush)
        {
            case SolidColorBrush scb:
                Log.Information("UI brush probe: {Scope}: {Property}={Type} {Color} (Opacity={Opacity})",
                    scope, propertyName, brush.GetType().Name, scb.Color.ToString(), brush.Opacity);
                break;

            case GradientBrush gb:
                var stops = string.Join(", ", gb.GradientStops.Select(s => $"{s.Offset:0.##}:{s.Color}"));
                Log.Information("UI brush probe: {Scope}: {Property}={Type} [{Stops}] (Opacity={Opacity})",
                    scope, propertyName, brush.GetType().Name, stops, brush.Opacity);
                break;

            default:
                Log.Information("UI brush probe: {Scope}: {Property}={Type} (Opacity={Opacity})",
                    scope, propertyName, brush.GetType().Name, brush.Opacity);
                break;
        }
    }

    private static DependencyProperty? FindDependencyProperty(Type type, string propertyName)
    {
        // Look for public static field "{Name}Property" on this type and its base types.
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
