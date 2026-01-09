using System;
using System.Diagnostics.CodeAnalysis;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Controls.Primitives;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media;

namespace STLLayouts.WpfApp.Theming;

public static class WindowChromeBehavior
{
    private const string TitleBarElementName = "PART_AppTitleBar";

    public static readonly DependencyProperty UseCustomChromeProperty =
        DependencyProperty.RegisterAttached(
            "UseCustomChrome",
            typeof(bool),
            typeof(WindowChromeBehavior),
            new PropertyMetadata(false, OnUseCustomChromeChanged));

    public static void SetUseCustomChrome(DependencyObject element, bool value)
        => element.SetValue(UseCustomChromeProperty, value);

    public static bool GetUseCustomChrome(DependencyObject element)
        => (bool)element.GetValue(UseCustomChromeProperty);

    private static void OnUseCustomChromeChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
    {
        if (d is not Window w || e.NewValue is not bool enabled)
        {
            return;
        }

        if (!enabled)
        {
            return;
        }

        w.SourceInitialized += (_, __) => ApplyWindowChrome(w);
        w.Loaded += (_, __) => HookTitleBar(w);
    }

    private static void ApplyWindowChrome(Window w)
    {
        try
        {
            var chrome = new System.Windows.Shell.WindowChrome
            {
                CaptionHeight = 0,
                CornerRadius = new CornerRadius(0),
                GlassFrameThickness = new Thickness(0),
                ResizeBorderThickness = new Thickness(6),
                UseAeroCaptionButtons = false
            };

            System.Windows.Shell.WindowChrome.SetWindowChrome(w, chrome);

            w.WindowStyle = WindowStyle.None;
            w.AllowsTransparency = false;
        }
        catch
        {
        }
    }

    private static void HookTitleBar(Window w)
    {
        if (w.Template == null)
        {
            return;
        }

        var titleBar = w.Template.FindName(TitleBarElementName, w) as FrameworkElement ?? FindInVisualTree(w, TitleBarElementName);
        if (titleBar == null)
        {
            return;
        }

        titleBar.MouseLeftButtonDown += (_, e) =>
        {
            if (e.ClickCount == 2)
            {
                ToggleMaximize(w);
                return;
            }

            try
            {
                w.DragMove();
            }
            catch
            {
            }
        };

        titleBar.MouseRightButtonUp += (_, __) =>
        {
            var pt = w.PointToScreen(Mouse.GetPosition(w));
            ShowSystemMenu(w, pt);
        };

        WireButtonIfPresent(w, "PART_AppMinButton", () => w.WindowState = WindowState.Minimized);
        WireButtonIfPresent(w, "PART_AppMaxButton", () => ToggleMaximize(w));
        WireButtonIfPresent(w, "PART_AppCloseButton", () =>
        {
            // Ensure MainWindow shutdown is consistent.
            if (ReferenceEquals(Application.Current?.MainWindow, w))
            {
                Application.Current?.Shutdown();
                return;
            }

            w.Close();
        });
    }

    private static void ToggleMaximize(Window w)
    {
        if (w.ResizeMode == ResizeMode.NoResize)
        {
            return;
        }

        w.WindowState = w.WindowState == WindowState.Maximized ? WindowState.Normal : WindowState.Maximized;
    }

    private static void WireButtonIfPresent(Window w, string name, Action action)
    {
        var element = w.Template?.FindName(name, w) as ButtonBase ?? FindInVisualTree(w, name) as ButtonBase;
        if (element == null)
        {
            return;
        }

        element.Click += (_, __) => action();
        element.PreviewMouseLeftButtonUp += (_, __) =>
        {
            if (element.IsEnabled)
            {
                action();
            }
        };
    }

    private static FrameworkElement? FindInVisualTree(DependencyObject root, string name)
    {
        var count = VisualTreeHelper.GetChildrenCount(root);
        for (var i = 0; i < count; i++)
        {
            var child = VisualTreeHelper.GetChild(root, i);
            if (child is FrameworkElement fe && fe.Name == name)
            {
                return fe;
            }

            var found = FindInVisualTree(child, name);
            if (found != null)
            {
                return found;
            }
        }

        return null;
    }

    private static void ShowSystemMenu(Window w, Point screenPoint)
    {
        var hwnd = new WindowInteropHelper(w).Handle;
        if (hwnd == IntPtr.Zero)
        {
            return;
        }

        var hMenu = GetSystemMenu(hwnd, bRevert: false);
        if (hMenu == IntPtr.Zero)
        {
            return;
        }

        var command = TrackPopupMenuEx(
            hMenu,
            TPM_LEFTALIGN | TPM_RETURNCMD,
            (int)screenPoint.X,
            (int)screenPoint.Y,
            hwnd,
            IntPtr.Zero);

        if (command != 0)
        {
            PostMessage(hwnd, WM_SYSCOMMAND, new IntPtr(command), IntPtr.Zero);
        }
    }

    private const int WM_SYSCOMMAND = 0x0112;
    private const int TPM_LEFTALIGN = 0x0000;
    private const int TPM_RETURNCMD = 0x0100;

#pragma warning disable SYSLIB1054
    [DllImport("user32.dll")]
    private static extern IntPtr GetSystemMenu(IntPtr hWnd, bool bRevert);

    [DllImport("user32.dll")]
    private static extern int TrackPopupMenuEx(IntPtr hmenu, int fuFlags, int x, int y, IntPtr hwnd, IntPtr lptpm);

    [DllImport("user32.dll")]
    private static extern bool PostMessage(IntPtr hWnd, int msg, IntPtr wParam, IntPtr lParam);
#pragma warning restore SYSLIB1054
}
