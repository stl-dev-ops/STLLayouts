using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Media;
using Serilog;

namespace STLLayouts.WpfApp.Theming;

public static class RadGridViewFilterDefaults
{
    private static readonly Dictionary<FrameworkElement, Delegate> _filteringHandlers = [];

    public static void ApplyToApplication(Application app)
    {
        ArgumentNullException.ThrowIfNull(app);

        try
        {
            var radGridViewType = Type.GetType(
                "Telerik.Windows.Controls.RadGridView, Telerik.Windows.Controls.GridView",
                throwOnError: false);

            if (radGridViewType == null)
            {
                Log.Debug("RadGridViewFilterDefaults: RadGridView type not found; skipping");
                return;
            }

            // Hook all controls as they load.
            EventManager.RegisterClassHandler(typeof(FrameworkElement), FrameworkElement.LoadedEvent, new RoutedEventHandler(OnAnyFrameworkElementLoaded));

            // Also hook all windows so we can target Telerik's filter popup (which is created dynamically).
            EventManager.RegisterClassHandler(typeof(Window), Window.LoadedEvent, new RoutedEventHandler(OnAnyWindowLoaded));
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "RadGridViewFilterDefaults: ApplyToApplication failed");
        }
    }

    private static void OnAnyFrameworkElementLoaded(object sender, RoutedEventArgs e)
    {
        if (sender is not FrameworkElement fe)
        {
            return;
        }

        try
        {
            if (string.Equals(fe.GetType().FullName, "Telerik.Windows.Controls.RadGridView", StringComparison.Ordinal))
            {
                AttachFilteringHandlerIfNeeded(fe);
            }

            // Generic best-effort: when any related element loads, try to hide any "Match case" UI.
            HideMatchCaseUiIfPresent(fe, aggressiveRescan: false);
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "RadGridViewFilterDefaults: Failed during Loaded interception");
        }
    }

    private static void OnAnyWindowLoaded(object? sender, RoutedEventArgs e)
    {
        if (sender is not Window w)
        {
            return;
        }

        try
        {
            // Attach CLR-level event handlers once per window.
            const string markerKey = "__stllayouts_window_hooked";
            if (!w.Resources.Contains(markerKey))
            {
                w.Resources[markerKey] = true;
                w.ContentRendered += (_, __) => OnAnyWindowContentRendered(w);
            }

            if (!IsLikelyGridViewFilterPopup(w))
            {
                return;
            }

            // Scan the entire popup window immediately.
            HideMatchCaseUiIfPresent(w, aggressiveRescan: true);
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "RadGridViewFilterDefaults: Window.Loaded handler failed");
        }
    }

    private static void OnAnyWindowContentRendered(Window w)
    {
        try
        {
            if (!IsLikelyGridViewFilterPopup(w))
            {
                return;
            }

            HideMatchCaseUiIfPresent(w, aggressiveRescan: true);
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "RadGridViewFilterDefaults: Window.ContentRendered handler failed");
        }
    }

    private static bool IsLikelyGridViewFilterPopup(Window w)
    {
        // Telerik filter popup windows are typically unnamed and use internal Telerik types.
        // Avoid touching regular windows.
        var typeName = w.GetType().FullName ?? string.Empty;

        if (typeName.Contains("Telerik", StringComparison.OrdinalIgnoreCase) &&
            (typeName.Contains("Popup", StringComparison.OrdinalIgnoreCase) ||
             typeName.Contains("RadWindow", StringComparison.OrdinalIgnoreCase) ||
             typeName.Contains("DropDown", StringComparison.OrdinalIgnoreCase)))
        {
            return true;
        }

        // Also catch generic WPF PopupRoot-hosted windows that Telerik uses.
        var title = w.Title ?? string.Empty;
        if (title.Contains("Filter", StringComparison.OrdinalIgnoreCase) && typeName.Contains("Telerik", StringComparison.OrdinalIgnoreCase))
        {
            return true;
        }

        // Heuristic: if the visual tree already contains an element with automation id containing GridViewFilter.
        try
        {
            var hasGridViewFilter = FindVisualDescendants(w)
                .OfType<FrameworkElement>()
                .Any(el =>
                {
                    var aid = AutomationProperties.GetAutomationId(el) ?? string.Empty;
                    return aid.Contains("GridViewFilter", StringComparison.OrdinalIgnoreCase) ||
                           aid.Contains("Filter", StringComparison.OrdinalIgnoreCase) && aid.Contains("GridView", StringComparison.OrdinalIgnoreCase);
                });

            return hasGridViewFilter;
        }
        catch
        {
            return false;
        }
    }

    private static void HideMatchCaseUiIfPresent(FrameworkElement scope, bool aggressiveRescan)
    {
        // Simple guard (per-scope) to avoid repeated work.
        // For filter popups, we *do* want to re-scan on ContentRendered.
        const string markerKey = "__stllayouts_matchcase_hidden";
        if (!aggressiveRescan && scope.Resources.Contains(markerKey))
        {
            return;
        }

        scope.Resources[markerKey] = true;

        try
        {
            var candidates = FindVisualDescendants(scope)
                .OfType<FrameworkElement>()
                .Where(IsMatchCaseUiElement)
                .ToList();

            if (candidates.Count == 0)
            {
                if (aggressiveRescan)
                {
                    Log.Debug("RadGridViewFilterDefaults: No MatchCase UI found in popup scope={ScopeType}", scope.GetType().FullName);
                }
                return;
            }

            foreach (var el in candidates)
            {
                if (el.Visibility != Visibility.Collapsed)
                {
                    el.Visibility = Visibility.Collapsed;
                }

                // Prevent focus/tab stop on hidden elements.
                el.IsEnabled = false;
                if (el is Control c)
                {
                    c.IsTabStop = false;
                }
            }

            Log.Debug("RadGridViewFilterDefaults: Hid {Count} MatchCase UI element(s) under {ScopeType}", candidates.Count, scope.GetType().FullName);
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "RadGridViewFilterDefaults: HideMatchCaseUiIfPresent failed");
        }
    }

    private static bool IsMatchCaseUiElement(FrameworkElement el)
    {
        var name = el.Name ?? string.Empty;
        if (name.Contains("MatchCase", StringComparison.OrdinalIgnoreCase)) return true;
        if (name.Contains("CaseSensitive", StringComparison.OrdinalIgnoreCase)) return true;

        var uid = el.Uid ?? string.Empty;
        if (uid.Contains("MatchCase", StringComparison.OrdinalIgnoreCase)) return true;
        if (uid.Contains("CaseSensitive", StringComparison.OrdinalIgnoreCase)) return true;

        var aid = AutomationProperties.GetAutomationId(el) ?? string.Empty;
        if (aid.Contains("MatchCase", StringComparison.OrdinalIgnoreCase)) return true;
        if (aid.Contains("CaseSensitive", StringComparison.OrdinalIgnoreCase)) return true;
        if (aid.Contains("GridViewFilter", StringComparison.OrdinalIgnoreCase) && aid.Contains("Case", StringComparison.OrdinalIgnoreCase)) return true;

        var helpText = AutomationProperties.GetHelpText(el) ?? string.Empty;
        if (helpText.Contains("Match", StringComparison.OrdinalIgnoreCase) && helpText.Contains("case", StringComparison.OrdinalIgnoreCase)) return true;
        if (helpText.Contains("case", StringComparison.OrdinalIgnoreCase) && helpText.Contains("sensitive", StringComparison.OrdinalIgnoreCase)) return true;

        var tooltip = ToolTipService.GetToolTip(el)?.ToString() ?? string.Empty;
        if (tooltip.Contains("Match", StringComparison.OrdinalIgnoreCase) && tooltip.Contains("case", StringComparison.OrdinalIgnoreCase)) return true;
        if (tooltip.Contains("case", StringComparison.OrdinalIgnoreCase) && tooltip.Contains("sensitive", StringComparison.OrdinalIgnoreCase)) return true;

        if (el is CheckBox cb)
        {
            var content = cb.Content?.ToString() ?? string.Empty;
            if (content.Contains("Match", StringComparison.OrdinalIgnoreCase) && content.Contains("case", StringComparison.OrdinalIgnoreCase)) return true;
            if (content.Contains("case", StringComparison.OrdinalIgnoreCase) && content.Contains("sensitive", StringComparison.OrdinalIgnoreCase)) return true;
        }

        if (el is ToggleButton tb)
        {
            var content = tb.Content?.ToString() ?? string.Empty;
            if (content.Contains("Match", StringComparison.OrdinalIgnoreCase) && content.Contains("case", StringComparison.OrdinalIgnoreCase)) return true;
            if (content.Contains("case", StringComparison.OrdinalIgnoreCase) && content.Contains("sensitive", StringComparison.OrdinalIgnoreCase)) return true;
        }

        if (el is TextBlock text)
        {
            // Some themes render a label next to the checkbox.
            var t = text.Text ?? string.Empty;
            if (t.Contains("Match", StringComparison.OrdinalIgnoreCase) && t.Contains("case", StringComparison.OrdinalIgnoreCase)) return true;
            if (t.Contains("case", StringComparison.OrdinalIgnoreCase) && t.Contains("sensitive", StringComparison.OrdinalIgnoreCase)) return true;
        }

        return false;
    }

    private static System.Collections.Generic.IEnumerable<DependencyObject> FindVisualDescendants(DependencyObject root)
    {
        if (root == null)
        {
            yield break;
        }

        var count = VisualTreeHelper.GetChildrenCount(root);
        for (var i = 0; i < count; i++)
        {
            var child = VisualTreeHelper.GetChild(root, i);
            if (child == null)
            {
                continue;
            }

            yield return child;

            foreach (var grandChild in FindVisualDescendants(child))
            {
                yield return grandChild;
            }
        }
    }

    private static void AttachFilteringHandlerIfNeeded(FrameworkElement radGridView)
    {
        const string markerKey = "__stllayouts_filtering_hooked";
        if (radGridView.Resources.Contains(markerKey))
        {
            return;
        }

        radGridView.Resources[markerKey] = true;

        var gridType = radGridView.GetType();
        var filteringEvent = gridType.GetEvent("Filtering", BindingFlags.Instance | BindingFlags.Public);
        if (filteringEvent == null)
        {
            return;
        }

        // Create an EventHandler-compatible delegate that forwards to OnFilteringInstance.
        var mi = typeof(RadGridViewFilterDefaults).GetMethod(nameof(OnFilteringEventHandler), BindingFlags.NonPublic | BindingFlags.Static);
        if (mi == null)
        {
            return;
        }

        var handler = Delegate.CreateDelegate(filteringEvent.EventHandlerType!, mi);
        _filteringHandlers[radGridView] = handler;
        filteringEvent.AddEventHandler(radGridView, handler);

        Log.Debug("RadGridViewFilterDefaults: Attached instance Filtering handler to {Grid}", GetElementDebugName(radGridView));
    }

    private static void OnFilteringEventHandler(object? _, EventArgs e)
        => OnFilteringInstance(_, e);

    private static void OnFilteringInstance(object? _, object? e)
    {
        try
        {
            if (e == null)
            {
                return;
            }

            var argsType = e.GetType();
            var filterProp = argsType.GetProperty("Filter", BindingFlags.Instance | BindingFlags.Public);
            var filter = filterProp?.GetValue(e);
            if (filter == null)
            {
                return;
            }

            var fdType = filter.GetType();
            var isCaseSensitiveProp = fdType.GetProperty("IsCaseSensitive", BindingFlags.Instance | BindingFlags.Public);
            if (isCaseSensitiveProp?.CanWrite == true && isCaseSensitiveProp.PropertyType == typeof(bool))
            {
                if ((bool?)isCaseSensitiveProp.GetValue(filter) != false)
                {
                    isCaseSensitiveProp.SetValue(filter, false);
                    Log.Debug("RadGridViewFilterDefaults: Forced Filter.IsCaseSensitive=false (filterType={FilterType})", fdType.FullName);
                }
            }
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "RadGridViewFilterDefaults: Filtering handler failed");
        }
    }

    private static string GetElementDebugName(FrameworkElement fe)
        => string.IsNullOrWhiteSpace(fe.Name) ? $"{fe.GetType().Name}#<no-name>" : $"{fe.GetType().Name}#{fe.Name}";
}
