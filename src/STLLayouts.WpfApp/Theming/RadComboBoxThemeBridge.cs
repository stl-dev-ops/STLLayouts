using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Interop;
using System.Windows.Media;
using Serilog;
using Telerik.Windows.Controls;

namespace STLLayouts.WpfApp.Theming;

internal static class RadComboBoxThemeBridge
{
    public static readonly DependencyProperty IsEnabledProperty =
        DependencyProperty.RegisterAttached(
            "IsEnabled",
            typeof(bool),
            typeof(RadComboBoxThemeBridge),
            new PropertyMetadata(false, OnIsEnabledChanged));

    public static void SetIsEnabled(DependencyObject element, bool value) => element.SetValue(IsEnabledProperty, value);
    public static bool GetIsEnabled(DependencyObject element) => (bool)element.GetValue(IsEnabledProperty);

    private static void OnIsEnabledChanged(DependencyObject d, DependencyPropertyChangedEventArgs _)
    {
        if (d is not RadComboBox combo)
            return;

        if (combo.GetValue(IsEnabledProperty) is true)
        {
            combo.Loaded += ComboOnLoaded;
            combo.DropDownOpened += ComboOnDropDownOpened;
        }
        else
        {
            combo.Loaded -= ComboOnLoaded;
            combo.DropDownOpened -= ComboOnDropDownOpened;
        }
    }

    private static void ComboOnLoaded(object sender, RoutedEventArgs e)
    {
        if (sender is RadComboBox combo)
            Apply(combo);
    }

    private static void ComboOnDropDownOpened(object? sender, EventArgs e)
    {
        if (sender is RadComboBox combo)
        {
            Apply(combo);
            ApplyOpenPopup(combo);
        }
    }

    private static void Apply(RadComboBox combo)
    {
        try
        {
            // PART_EditableTextBox (editable text area)
            if (FindChildByName(combo, "PART_EditableTextBox") is TextBox editor)
            {
                if (combo.Foreground is Brush fg)
                {
                    editor.Foreground = fg;
                    editor.CaretBrush = fg;
                }

                // keep editor visually integrated with the combo
                editor.Background = Brushes.Transparent;
                editor.BorderBrush = Brushes.Transparent;
            }
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "RadComboBoxThemeBridge: failed applying bridged brushes");
        }
    }

    private static void ApplyOpenPopup(RadComboBox combo)
    {
        try
        {
            var popup = FindOpenPopupForCombo(combo);
            if (popup?.Child is not DependencyObject popupRoot)
                return;

            if (FindChildByName(popupRoot, "PART_ResizeBorder") is Border resizeBorder)
            {
                resizeBorder.Background = combo.Background
                                       ?? (Application.Current?.Resources["AppSurfaceBrush"] as Brush)
                                       ?? resizeBorder.Background;

                resizeBorder.BorderBrush = combo.BorderBrush ?? resizeBorder.BorderBrush;
            }

            if (FindChildByName(popupRoot, "PopupRoot") is Panel popupPanel)
            {
                popupPanel.Background = combo.Background
                                      ?? (Application.Current?.Resources["AppSurfaceBrush"] as Brush)
                                      ?? popupPanel.Background;
            }
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "RadComboBoxThemeBridge: failed applying open popup bridged brushes");
        }
    }

    private static Popup? FindOpenPopupForCombo(RadComboBox combo)
    {
        try
        {
            Popup? best = null;

            // Popups are hosted in their own HWND and are not part of the main window visual tree.
            foreach (PresentationSource src in PresentationSource.CurrentSources)
            {
                if (src?.RootVisual is not DependencyObject root)
                    continue;

                var popup = FindFirstOpenPopupWithResizeBorder(root);
                if (popup == null)
                    continue;

                // Prefer one explicitly targeting this combo.
                if (ReferenceEquals(popup.PlacementTarget, combo))
                    return popup;

                best ??= popup;
            }

            return best;
        }
        catch
        {
            return null;
        }
    }

    private static Popup? FindFirstOpenPopupWithResizeBorder(DependencyObject root)
    {
        foreach (var popup in GetVisualDescendants<Popup>(root))
        {
            if (!popup.IsOpen || popup.Child is not DependencyObject popupRoot)
                continue;

            if (FindChildByName(popupRoot, "PART_ResizeBorder") == null)
                continue;

            return popup;
        }

        return null;
    }

    private static IEnumerable<T> GetVisualDescendants<T>(DependencyObject? root) where T : DependencyObject
    {
        if (root == null)
            yield break;

        var count = VisualTreeHelper.GetChildrenCount(root);
        for (var i = 0; i < count; i++)
        {
            var child = VisualTreeHelper.GetChild(root, i);
            if (child is T t)
                yield return t;

            foreach (var nested in GetVisualDescendants<T>(child))
                yield return nested;
        }
    }

    private static FrameworkElement? FindChildByName(DependencyObject root, string name)
    {
        var count = VisualTreeHelper.GetChildrenCount(root);
        for (var i = 0; i < count; i++)
        {
            var child = VisualTreeHelper.GetChild(root, i);
            if (child is FrameworkElement fe && string.Equals(fe.Name, name, StringComparison.Ordinal))
                return fe;

            var found = FindChildByName(child, name);
            if (found != null)
                return found;
        }

        return null;
    }
}
