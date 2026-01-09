using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Windows;
using Serilog;

namespace STLLayouts.WpfApp.Theming;

internal static class TelerikThemeBootstrapper
{
    public static void ApplyFluentDarkIfAvailable()
    {
        try
        {
            Log.Information("Telerik theming: attempting to apply Fluent Dark");

            LoadAssemblyIfPresent("Telerik.Windows.Themes.Fluent");
            LoadAssemblyIfPresent("Telerik.Windows.Controls");

            var themeManagerType = FindTypeInLoadedAssemblies(
                "Telerik.Windows.Controls.ThemeManager",
                "Telerik.Windows.Controls.Theming.ThemeManager");

            if (themeManagerType == null)
            {
                Log.Information("Telerik theming: ThemeManager type not found in loaded assemblies");
                return;
            }

            Log.Information("Telerik theming: ThemeManager type found: {Type}", themeManagerType.FullName);
            DumpThemeManagerMembers(themeManagerType);

            var fromName = themeManagerType.GetMethod(
                "FromName",
                BindingFlags.Public | BindingFlags.Static,
                binder: null,
                types: new[] { typeof(string) },
                modifiers: null);

            if (fromName == null)
            {
                Log.Information("Telerik theming: ThemeManager.FromName(string) not found");
                return;
            }

            try
            {
                var fluentTheme = fromName.Invoke(null, new object[] { "Fluent" });
                Log.Information(
                    "Telerik theming: ThemeManager.FromName('Fluent') returned {ThemeType}",
                    fluentTheme?.GetType().FullName ?? "<null>");
            }
            catch (Exception ex)
            {
                Log.Warning(ex, "Telerik theming: ThemeManager.FromName('Fluent') invocation failed");
            }

            TryEnableFluentDarkMode();
            TryApplyFluentDarkPresetIfAvailable();
            TryApplyFluentPaletteOverrides();

            // Bridge Telerik Fluent to WPF styles: copy theme brushes into App.xaml tokens.
            TrySyncAppBrushesFromTelerikResources();

            // If Fluent dictionaries don't expose a good app/window background token, fall back to real control defaults.
            TrySyncAppBrushesFromTelerikControlDefaults();

            Log.Information("Telerik theming: Fluent attempt complete");
        }
        catch (Exception ex)
        {
            Log.Warning(ex, "Telerik theming: Failed to apply Fluent");
        }
    }

    private static void TrySyncAppBrushesFromTelerikResources()
    {
        try
        {
            var app = Application.Current;
            if (app?.Resources == null)
            {
                return;
            }

            // 1) Try known explicit keys first (fast path for versions that expose them)
            var knownMapping = new (string telerikKey, string appKey)[]
            {
                ("TelerikFluentThemeBackgroundBrush", "AppBackgroundBrush"),
                ("TelerikFluentThemeControlBackgroundBrush", "AppSurfaceBrush"),
                ("TelerikFluentThemeForegroundBrush", "AppForegroundBrush"),
                ("TelerikFluentThemeInactiveForegroundBrush", "AppSubtleForegroundBrush"),
                ("TelerikFluentThemeBorderBrush", "AppBorderBrush"),
                ("TelerikFluentThemeAccentBrush", "AppAccentBrush"),
            };

            var updated = 0;
            foreach (var (telerikKey, appKey) in knownMapping)
            {
                if (TrySetAppBrushFromKey(app.Resources, telerikKey, app.Resources, appKey))
                {
                    updated++;
                }
            }

            if (updated > 0)
            {
                Log.Information("Telerik theming: synced {Count} App*Brush resources from Telerik Fluent (known keys)", updated);
                return;
            }

            // 2) Discovery mode (Fluent dictionaries only)
            var fluentThemeResources = FindMergedDictionariesBySource(app.Resources, s =>
                s.Contains("Telerik.Windows.Themes.Fluent", StringComparison.OrdinalIgnoreCase));

            if (fluentThemeResources.Count == 0)
            {
                Log.Debug("Telerik theming: no Fluent theme merged dictionaries found by Source; cannot do safe broad discovery");
                return;
            }

            var discoveredBrushes = fluentThemeResources
                .SelectMany(DiscoverBrushResources)
                .GroupBy(x => x.Key, StringComparer.OrdinalIgnoreCase)
                .Select(g => g.First())
                .OrderBy(x => x.Key, StringComparer.OrdinalIgnoreCase)
                .ToList();

            var discoveredColors = fluentThemeResources
                .SelectMany(DiscoverColorResources)
                .GroupBy(x => x.Key, StringComparer.OrdinalIgnoreCase)
                .Select(g => g.First())
                .OrderBy(x => x.Key, StringComparer.OrdinalIgnoreCase)
                .ToList();

            if (discoveredBrushes.Count == 0 && discoveredColors.Count == 0)
            {
                Log.Debug("Telerik theming: no brush/color resources discovered while scanning Fluent theme dictionaries");
                return;
            }

            // Log brush sample
            var interestingBrushes = discoveredBrushes
                .Where(x => LooksLikeThemeBrushKey(x.Key))
                .Take(80)
                .ToArray();

            if (interestingBrushes.Length > 0)
            {
                Log.Information(
                    "Telerik theming: discovered theme brush keys from Fluent dictionaries (sample):\n{Keys}",
                    string.Join(Environment.NewLine, interestingBrushes.Select(x => $"- {x.Key} ({x.Brush.GetType().Name})")));
            }

            // Log surface/chrome/base brush keys.
            var surfaceBrushCandidates = discoveredBrushes
                .Where(x => LooksLikeSurfaceTokenKey(x.Key))
                .Select(x => x.Key)
                .Distinct(StringComparer.OrdinalIgnoreCase)
                .OrderBy(x => x, StringComparer.OrdinalIgnoreCase)
                .ToArray();

            if (surfaceBrushCandidates.Length > 0)
            {
                Log.Information(
                    "Telerik theming: surface/chrome/base BRUSH keys found in Fluent dictionaries:\n{Keys}",
                    string.Join(Environment.NewLine, surfaceBrushCandidates.Select(k => $"- {k}")));
            }
            else
            {
                Log.Debug("Telerik theming: no surface/chrome/base BRUSH keys found in Fluent dictionaries");
            }

            // Log surface/chrome/base color keys.
            var surfaceColorCandidates = discoveredColors
                .Where(x => LooksLikeSurfaceTokenKey(x.Key))
                .Select(x => x.Key)
                .Distinct(StringComparer.OrdinalIgnoreCase)
                .OrderBy(x => x, StringComparer.OrdinalIgnoreCase)
                .ToArray();

            if (surfaceColorCandidates.Length > 0)
            {
                Log.Information(
                    "Telerik theming: surface/chrome/base COLOR keys found in Fluent dictionaries:\n{Keys}",
                    string.Join(Environment.NewLine, surfaceColorCandidates.Select(k => $"- {k}")));
            }
            else
            {
                Log.Debug("Telerik theming: no surface/chrome/base COLOR keys found in Fluent dictionaries");
            }

            // Log all *background* keys to help identify the real Fluent window background token.
            var backgroundBrushKeys = discoveredBrushes
                .Where(x => x.Key.Contains("background", StringComparison.OrdinalIgnoreCase))
                .Select(x => x.Key)
                .Distinct(StringComparer.OrdinalIgnoreCase)
                .OrderBy(k => k, StringComparer.OrdinalIgnoreCase)
                .ToArray();

            if (backgroundBrushKeys.Length > 0)
            {
                Log.Information(
                    "Telerik theming: BRUSH keys containing 'background' in Fluent dictionaries:\n{Keys}",
                    string.Join(Environment.NewLine, backgroundBrushKeys.Select(k => $"- {k}")));

                // Log details for known candidates (so we can compare actual colors).
                foreach (var key in backgroundBrushKeys)
                {
                    var found = discoveredBrushes.FirstOrDefault(b => string.Equals(b.Key, key, StringComparison.OrdinalIgnoreCase));
                    if (found != null)
                    {
                        LogBrushDetails(found.Key, found.Brush);
                    }
                }
            }

            var backgroundColorKeys = discoveredColors
                .Where(x => x.Key.Contains("background", StringComparison.OrdinalIgnoreCase))
                .Select(x => x.Key)
                .Distinct(StringComparer.OrdinalIgnoreCase)
                .OrderBy(k => k, StringComparer.OrdinalIgnoreCase)
                .ToArray();

            if (backgroundColorKeys.Length > 0)
            {
                Log.Information(
                    "Telerik theming: COLOR keys containing 'background' in Fluent dictionaries:\n{Keys}",
                    string.Join(Environment.NewLine, backgroundColorKeys.Select(k => $"- {k}")));
            }

            // Automatic background mapping:
            // Prefer a high-level background brush if one exists; otherwise prefer a high-level background color.
            // As a final fallback, choose the least control-specific background brush/color.
            if (!app.Resources.Contains("AppBackgroundBrush"))
            {
                // App.xaml defines this key, so this should not happen; keep safe.
                app.Resources.Add("AppBackgroundBrush", new System.Windows.Media.SolidColorBrush(System.Windows.Media.Colors.Transparent));
            }

            if (app.Resources["AppBackgroundBrush"] is System.Windows.Media.SolidColorBrush)
            {
                var backgroundBrushCandidates = discoveredBrushes
                    .Where(x => x.Key.Contains("background", StringComparison.OrdinalIgnoreCase))
                    .ToList();

                // Prefer non-overlay/non-hamburger when choices are limited.
                var bestBrush = backgroundBrushCandidates
                    .OrderByDescending(x => ScoreBackgroundKey(x.Key))
                    .FirstOrDefault(x => !x.Key.Contains("overlay", StringComparison.OrdinalIgnoreCase))
                    ?? backgroundBrushCandidates.OrderByDescending(x => ScoreBackgroundKey(x.Key)).FirstOrDefault();

                if (bestBrush != null && bestBrush.Brush != null)
                {
                    app.Resources["AppBackgroundBrush"] = bestBrush.Brush;
                    Log.Information("Telerik theming: auto-mapped AppBackgroundBrush <= {Key} (brush)", bestBrush.Key);
                }
                else
                {
                    var bestColor = discoveredColors
                        .Where(x => x.Key.Contains("background", StringComparison.OrdinalIgnoreCase))
                        .OrderByDescending(x => ScoreBackgroundKey(x.Key))
                        .FirstOrDefault();

                    if (bestColor != null)
                    {
                        app.Resources["AppBackgroundBrush"] = new System.Windows.Media.SolidColorBrush(bestColor.Color);
                        Log.Information("Telerik theming: auto-mapped AppBackgroundBrush <= {Key} (color)", bestColor.Key);
                    }
                }

                // Log final mapped value.
                if (app.Resources["AppBackgroundBrush"] is System.Windows.Media.Brush bg)
                {
                    LogBrushDetails("AppBackgroundBrush", bg);
                }

                // If Fluent discovery produced a fully transparent background (common with control-specific tokens),
                // prefer the actual Telerik control default background so the app tracks future theme changes.
                if (app.Resources["AppBackgroundBrush"] is System.Windows.Media.SolidColorBrush scb && scb.Color.A == 0)
                {
                    Log.Information("Telerik theming: AppBackgroundBrush is fully transparent after Fluent sync; falling back to Telerik control defaults");
                    TrySyncAppBrushesFromTelerikControlDefaults();
                    if (app.Resources["AppBackgroundBrush"] is System.Windows.Media.Brush bg2)
                    {
                        LogBrushDetails("AppBackgroundBrush(after-control-fallback)", bg2);
                    }
                }
            }

            // Allow explicit whitelist for background mapping.
            // Brush key: STL_LAYOUTS_TELERIK_FLUENT_BACKGROUND_KEY
            // Color key: STL_LAYOUTS_TELERIK_FLUENT_BACKGROUND_COLOR_KEY
            var forcedBackgroundBrushKey = Environment.GetEnvironmentVariable("STL_LAYOUTS_TELERIK_FLUENT_BACKGROUND_KEY");
            if (!string.IsNullOrWhiteSpace(forcedBackgroundBrushKey))
            {
                var match = discoveredBrushes.FirstOrDefault(x => string.Equals(x.Key, forcedBackgroundBrushKey, StringComparison.OrdinalIgnoreCase));
                if (match != null)
                {
                    app.Resources["AppBackgroundBrush"] = match.Brush;
                    Log.Information("Telerik theming: mapped AppBackgroundBrush <= {TelerikKey} (forced brush)", match.Key);
                }
                else
                {
                    Log.Warning("Telerik theming: forced background brush key '{Key}' not found in Fluent dictionaries", forcedBackgroundBrushKey);
                }
            }

            var forcedBackgroundColorKey = Environment.GetEnvironmentVariable("STL_LAYOUTS_TELERIK_FLUENT_BACKGROUND_COLOR_KEY");
            if (!string.IsNullOrWhiteSpace(forcedBackgroundColorKey))
            {
                var match = discoveredColors.FirstOrDefault(x => string.Equals(x.Key, forcedBackgroundColorKey, StringComparison.OrdinalIgnoreCase));
                if (match != null)
                {
                    app.Resources["AppBackgroundBrush"] = new System.Windows.Media.SolidColorBrush(match.Color);
                    Log.Information("Telerik theming: mapped AppBackgroundBrush <= {TelerikKey} (forced color)", match.Key);
                }
                else
                {
                    Log.Warning("Telerik theming: forced background color key '{Key}' not found in Fluent dictionaries", forcedBackgroundColorKey);
                }
            }

            var candidates = discoveredBrushes.Where(x => LooksLikeThemeBrushKey(x.Key)).ToList();

            SetAppBrushByHeuristic(app.Resources, "AppBackgroundBrush", candidates, new[] { "background" }, preferNot: new[] { "control", "border", "accent", "hover", "pressed", "focus" });
            SetAppBrushByHeuristic(app.Resources, "AppSurfaceBrush", candidates, new[] { "control", "surface" }, preferNot: new[] { "border", "foreground", "accent" });
            SetAppBrushByHeuristic(app.Resources, "AppForegroundBrush", candidates, new[] { "foreground", "text" }, preferNot: new[] { "inactive", "disabled", "border" });
            SetAppBrushByHeuristic(app.Resources, "AppSubtleForegroundBrush", candidates, new[] { "inactive", "disabled", "secondary", "subtle" }, preferNot: Array.Empty<string>());
            SetAppBrushByHeuristic(app.Resources, "AppBorderBrush", candidates, new[] { "border", "stroke" }, preferNot: new[] { "accent" });
            SetAppBrushByHeuristic(app.Resources, "AppAccentBrush", candidates, new[] { "accent" }, preferNot: new[] { "border", "stroke" });

            Log.Information("Telerik theming: Fluent?WPF brush sync completed (discovery mode, Fluent dictionaries only)");
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "Telerik theming: Failed to sync App*Brush resources from Telerik Fluent (non-fatal)");
        }
    }

    private static void TrySyncAppBrushesFromTelerikControlDefaults()
    {
        try
        {
            var app = Application.Current;
            if (app?.Resources == null)
            {
                return;
            }

            // We'd prefer to keep App.xaml as the single source of truth. If it isn't present for some reason, add it.
            if (!app.Resources.Contains("AppBackgroundBrush"))
            {
                app.Resources.Add("AppBackgroundBrush", new System.Windows.Media.SolidColorBrush(System.Windows.Media.Colors.Transparent));
            }

            // If AppBackgroundBrush is already usable, keep it.
            // "Usable" means: not fully transparent.
            if (app.Resources["AppBackgroundBrush"] is System.Windows.Media.SolidColorBrush existingSolid
                && existingSolid.Color.A != 0)
            {
                Log.Debug("Telerik theming: control-default fallback skipped (AppBackgroundBrush already non-transparent)");
                return;
            }

            // Also treat a non-solid brush with Opacity=0 as unusable.
            if (app.Resources["AppBackgroundBrush"] is System.Windows.Media.Brush existingBrush
                && existingBrush.Opacity > 0
                && existingBrush is not System.Windows.Media.SolidColorBrush)
            {
                Log.Debug("Telerik theming: control-default fallback skipped (AppBackgroundBrush already non-transparent brush)");
                return;
            }

            // Create a temporary Telerik control instance to read its default themed Background.
            // This tracks whatever Telerik theme is active (Fluent, Office2019, etc.).
            var radTabControlType = FindTypeInLoadedAssemblies(
                "Telerik.Windows.Controls.RadTabControl",
                "Telerik.Windows.Controls.Navigation.RadTabControl");

            if (radTabControlType != null && typeof(FrameworkElement).IsAssignableFrom(radTabControlType))
            {
                if (Activator.CreateInstance(radTabControlType) is FrameworkElement tmpTabs)
                {
                    tmpTabs.ApplyTemplate();

                    var bg = ReadBrushDp(tmpTabs, "Background");
                    if (bg is System.Windows.Media.Brush anyBrush)
                    {
                        // Accept any non-transparent brush. If it's solid, ensure A != 0.
                        if (anyBrush is System.Windows.Media.SolidColorBrush scb)
                        {
                            if (scb.Color.A != 0)
                            {
                                app.Resources["AppBackgroundBrush"] = scb;
                                Log.Information("Telerik theming: AppBackgroundBrush <= {Control}.Background {Color} (control-default fallback)",
                                    radTabControlType.Name, scb.Color.ToString());
                                return;
                            }
                        }
                        else if (anyBrush.Opacity > 0)
                        {
                            app.Resources["AppBackgroundBrush"] = anyBrush;
                            Log.Information("Telerik theming: AppBackgroundBrush <= {Control}.Background {Type} (control-default fallback)",
                                radTabControlType.Name, anyBrush.GetType().Name);
                            return;
                        }
                    }

                    Log.Debug("Telerik theming: {Control}.Background was null/transparent; trying next fallback", radTabControlType.Name);
                }
            }

            // Secondary fallback: RadGridView background (often the primary surface color).
            var radGridViewType = FindTypeInLoadedAssemblies(
                "Telerik.Windows.Controls.RadGridView",
                "Telerik.Windows.Controls.GridView.RadGridView");

            if (radGridViewType != null && typeof(FrameworkElement).IsAssignableFrom(radGridViewType))
            {
                if (Activator.CreateInstance(radGridViewType) is FrameworkElement tmpGrid)
                {
                    tmpGrid.ApplyTemplate();

                    var bg = ReadBrushDp(tmpGrid, "Background");
                    if (bg is System.Windows.Media.Brush anyBrush)
                    {
                        if (anyBrush is System.Windows.Media.SolidColorBrush scb)
                        {
                            if (scb.Color.A != 0)
                            {
                                app.Resources["AppBackgroundBrush"] = scb;
                                Log.Information("Telerik theming: AppBackgroundBrush <= {Control}.Background {Color} (control-default fallback)",
                                    radGridViewType.Name, scb.Color.ToString());
                                return;
                            }
                        }
                        else if (anyBrush.Opacity > 0)
                        {
                            app.Resources["AppBackgroundBrush"] = anyBrush;
                            Log.Information("Telerik theming: AppBackgroundBrush <= {Control}.Background {Type} (control-default fallback)",
                                radGridViewType.Name, anyBrush.GetType().Name);
                            return;
                        }
                    }

                    Log.Debug("Telerik theming: {Control}.Background was null/transparent; no further fallbacks", radGridViewType.Name);
                }
            }
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "Telerik theming: Failed control-default fallback brush sync (non-fatal)");
        }
    }

    private sealed record ColorResource(string Key, System.Windows.Media.Color Color);

    private static List<ColorResource> DiscoverColorResources(ResourceDictionary root)
    {
        var results = new List<ColorResource>();
        var visited = new HashSet<ResourceDictionary>();

        void Walk(ResourceDictionary dict)
        {
            if (dict == null || !visited.Add(dict))
            {
                return;
            }

            foreach (DictionaryEntry entry in dict)
            {
                if (entry.Key is string key && entry.Value is System.Windows.Media.Color color)
                {
                    results.Add(new ColorResource(key, color));
                }
            }

            foreach (var md in dict.MergedDictionaries)
            {
                Walk(md);
            }
        }

        Walk(root);
        return results;
    }

    private static void TryEnableFluentDarkMode()
    {
        try
        {
            var fluentPaletteType = FindTypeInLoadedAssemblies(
                "Telerik.Windows.Controls.FluentPalette",
                "Telerik.Windows.Controls.Theming.FluentPalette",
                "Telerik.Windows.Themes.Fluent.FluentPalette");

            if (fluentPaletteType == null)
            {
                Log.Debug("Telerik theming: FluentPalette type not found (skipping dark mode switch)");
                return;
            }

            var isDarkModeProp = fluentPaletteType.GetProperty("IsDarkMode", BindingFlags.Public | BindingFlags.Static);
            if (isDarkModeProp != null && isDarkModeProp.CanWrite && isDarkModeProp.PropertyType == typeof(bool))
            {
                isDarkModeProp.SetValue(null, true);
                Log.Information("Telerik theming: FluentPalette.IsDarkMode set to true");
                return;
            }

            var candidatePropNames = new[] { "ThemeVariation", "Variation", "Mode", "ApplicationThemeVariation" };
            foreach (var name in candidatePropNames)
            {
                var p = fluentPaletteType.GetProperty(name, BindingFlags.Public | BindingFlags.Static);
                if (p == null || !p.CanWrite)
                {
                    continue;
                }

                var darkValue = TryResolveEnumValue(p.PropertyType, "Dark")
                                ?? TryResolveEnumValue(p.PropertyType, "DarkMode")
                                ?? TryResolveEnumValue(p.PropertyType, "Night")
                                ?? TryResolveEnumValue(p.PropertyType, "Black");

                if (darkValue != null)
                {
                    p.SetValue(null, darkValue);
                    Log.Information("Telerik theming: {PaletteType}.{Prop} set to {Value}", fluentPaletteType.FullName, name, darkValue);
                    return;
                }
            }

            Log.Debug("Telerik theming: No known Fluent dark-mode toggle found on {PaletteType}", fluentPaletteType.FullName);
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "Telerik theming: Failed to toggle Fluent dark mode (non-fatal)");
        }
    }

    private static void TryApplyFluentDarkPresetIfAvailable()
    {
        try
        {
            var fluentPaletteType = FindTypeInLoadedAssemblies(
                "Telerik.Windows.Controls.FluentPalette",
                "Telerik.Windows.Controls.Theming.FluentPalette",
                "Telerik.Windows.Themes.Fluent.FluentPalette");

            if (fluentPaletteType == null)
            {
                return;
            }

            var loadPresetOverloads = fluentPaletteType
                .GetMethods(BindingFlags.Public | BindingFlags.Static)
                .Where(m => string.Equals(m.Name, "LoadPreset", StringComparison.Ordinal))
                .ToArray();

            if (loadPresetOverloads.Length == 0)
            {
                return;
            }

            // Strategy:
            // 1) If there's a LoadPreset(string) or LoadPreset(object) we try common dark preset names.
            // 2) If there's a LoadPreset(enum) we try to find an enum value containing "Dark".
            var commonPresetNames = new[]
            {
                "Dark",
                "FluentDark",
                "Fluent_Dark",
                "DarkMode",
                "Night",
                "Black",
                "DarkTheme"
            };

            foreach (var m in loadPresetOverloads.OrderByDescending(x => x.GetParameters().Length))
            {
                var ps = m.GetParameters();
                if (ps.Length == 0)
                {
                    continue;
                }

                // If signature includes a single string
                if (ps.Length == 1 && ps[0].ParameterType == typeof(string))
                {
                    foreach (var name in commonPresetNames)
                    {
                        try
                        {
                            m.Invoke(null, new object[] { name });
                            Log.Information("Telerik theming: FluentPalette.LoadPreset('{Preset}') invoked", name);
                            return;
                        }
                        catch
                        {
                            // try next preset
                        }
                    }
                }

                // If signature accepts an enum, try a "Dark" value.
                if (ps.Length == 1 && ps[0].ParameterType.IsEnum)
                {
                    var enumType = ps[0].ParameterType;
                    var names = Enum.GetNames(enumType);
                    var darkCandidate = names.FirstOrDefault(n => n.Contains("dark", StringComparison.OrdinalIgnoreCase))
                                        ?? names.FirstOrDefault(n => n.Contains("night", StringComparison.OrdinalIgnoreCase))
                                        ?? names.FirstOrDefault(n => n.Contains("black", StringComparison.OrdinalIgnoreCase));

                    if (!string.IsNullOrWhiteSpace(darkCandidate))
                    {
                        var value = Enum.Parse(enumType, darkCandidate, ignoreCase: true);
                        m.Invoke(null, new[] { value });
                        Log.Information("Telerik theming: FluentPalette.LoadPreset({PresetEnum}) invoked", darkCandidate);
                        return;
                    }
                }
            }

            Log.Debug("Telerik theming: FluentPalette.LoadPreset found, but no dark preset could be applied");
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "Telerik theming: Failed to apply Fluent dark preset (non-fatal)");
        }
    }

    private static object? TryResolveEnumValue(Type maybeEnumType, params string[] names)
    {
        try
        {
            if (!maybeEnumType.IsEnum)
            {
                return null;
            }

            foreach (var n in names)
            {
                try
                {
                    return Enum.Parse(maybeEnumType, n, ignoreCase: true);
                }
                catch
                {
                    // ignore
                }
            }

            return null;
        }
        catch
        {
            return null;
        }
    }

    private static void TryApplyFluentPaletteOverrides()
    {
        try
        {
            // Try known palette entry points across common Telerik versions.
            var fluentPaletteType = FindTypeInLoadedAssemblies(
                "Telerik.Windows.Controls.FluentPalette",
                "Telerik.Windows.Controls.Theming.FluentPalette",
                "Telerik.Windows.Themes.Fluent.FluentPalette");

            if (fluentPaletteType == null)
            {
                Log.Debug("Telerik theming: FluentPalette type not found (skipping palette overrides)");
                return;
            }

            // Accent color set (typical Telerik pattern: FluentPalette.AccentColor)
            var accentProp = fluentPaletteType.GetProperty("AccentColor", BindingFlags.Public | BindingFlags.Static);
            if (accentProp != null && accentProp.CanWrite && accentProp.PropertyType == typeof(System.Windows.Media.Color))
            {
                // TODO: wire these values to configuration if desired.
                var accent = System.Windows.Media.Color.FromRgb(0x3A, 0x96, 0xDD);
                accentProp.SetValue(null, accent);
                Log.Information("Telerik theming: FluentPalette.AccentColor set to {Accent}", accent);
            }

            // Some versions expose an explicit method to apply a preset.
            var loadPreset = fluentPaletteType.GetMethod("LoadPreset", BindingFlags.Public | BindingFlags.Static);
            if (loadPreset != null)
            {
                Log.Debug("Telerik theming: FluentPalette.LoadPreset available (not invoked by default)");
            }
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "Telerik theming: Failed to apply Fluent palette overrides (non-fatal)");
        }
    }

    private static void DumpThemeManagerMembers(Type themeManagerType)
    {
        try
        {
            var props = themeManagerType
                .GetProperties(BindingFlags.Public | BindingFlags.Static)
                .OrderBy(p => p.Name)
                .Select(p => $"P {p.PropertyType.FullName} {p.Name} (CanWrite={p.CanWrite})")
                .ToArray();

            var methods = themeManagerType
                .GetMethods(BindingFlags.Public | BindingFlags.Static)
                .Where(m => !m.IsSpecialName)
                .OrderBy(m => m.Name)
                .Select(m => $"M {m.ReturnType.FullName} {m.Name}({string.Join(", ", m.GetParameters().Select(pp => pp.ParameterType.FullName + " " + pp.Name))})")
                .ToArray();

            if (props.Length > 0)
            {
                Log.Information("Telerik theming: ThemeManager public static properties:\n{Props}", string.Join(Environment.NewLine, props));
            }

            if (methods.Length > 0)
            {
                Log.Information("Telerik theming: ThemeManager public static methods:\n{Methods}", string.Join(Environment.NewLine, methods));
            }
        }
        catch (Exception ex)
        {
            Log.Warning(ex, "Telerik theming: Failed to dump ThemeManager members");
        }
    }

    private static void LoadAssemblyIfPresent(string simpleName)
    {
        if (AppDomain.CurrentDomain.GetAssemblies().Any(a => string.Equals(a.GetName().Name, simpleName, StringComparison.OrdinalIgnoreCase)))
        {
            return;
        }

        try
        {
            Assembly.Load(simpleName);
            Log.Debug("Telerik theming: loaded assembly {Assembly}", simpleName);
        }
        catch (Exception ex)
        {
            Log.Debug(ex, "Telerik theming: could not load assembly {Assembly}", simpleName);
        }
    }

    private static Type? FindTypeInLoadedAssemblies(params string[] fullNames)
    {
        foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            foreach (var fullName in fullNames)
            {
                try
                {
                    var t = asm.GetType(fullName, throwOnError: false, ignoreCase: false);
                    if (t != null)
                    {
                        return t;
                    }
                }
                catch
                {
                    // ignore and continue searching
                }
            }
        }

        return null;
    }

    private static bool LooksLikeSurfaceTokenKey(string key)
    {
        var k = key.ToLowerInvariant();

        if (k.Contains("hover") || k.Contains("pressed") || k.Contains("selected") || k.Contains("focus"))
        {
            return false;
        }

        return k.Contains("surface") || k.Contains("chrome") || k.Contains("base");
    }

    private static bool LooksLikeThemeBrushKey(string key)
    {
        var k = key.ToLowerInvariant();

        return k.Contains("brush")
               || k.Contains("background")
               || k.Contains("foreground")
               || k.Contains("accent")
               || k.Contains("border")
               || k.Contains("stroke")
               || k.Contains("text")
               || k.Contains("fill");
    }

    private sealed record BrushResource(string Key, System.Windows.Media.Brush Brush);

    private static List<BrushResource> DiscoverBrushResources(ResourceDictionary root)
    {
        var results = new List<BrushResource>();
        var visited = new HashSet<ResourceDictionary>();

        void Walk(ResourceDictionary dict)
        {
            if (dict == null || !visited.Add(dict))
            {
                return;
            }

            foreach (DictionaryEntry entry in dict)
            {
                if (entry.Key is string key && entry.Value is System.Windows.Media.Brush brush)
                {
                    results.Add(new BrushResource(key, brush));
                }
            }

            foreach (var md in dict.MergedDictionaries)
            {
                Walk(md);
            }
        }

        Walk(root);
        return results;
    }

    private static List<ResourceDictionary> FindMergedDictionariesBySource(ResourceDictionary root, Func<string, bool> predicate)
    {
        var results = new List<ResourceDictionary>();
        var visited = new HashSet<ResourceDictionary>();

        void Walk(ResourceDictionary dict)
        {
            if (dict == null || !visited.Add(dict))
            {
                return;
            }

            var source = dict.Source?.OriginalString;
            if (!string.IsNullOrWhiteSpace(source) && predicate(source))
            {
                results.Add(dict);
            }

            foreach (var md in dict.MergedDictionaries)
            {
                Walk(md);
            }
        }

        Walk(root);
        return results;
    }

    private static bool TrySetAppBrushFromKey(ResourceDictionary source, string sourceKey, ResourceDictionary appResources, string appKey)
    {
        try
        {
            if (!source.Contains(sourceKey))
            {
                return false;
            }

            var value = source[sourceKey];
            if (value is not System.Windows.Media.Brush brush)
            {
                return false;
            }

            appResources[appKey] = brush;
            Log.Information("Telerik theming: mapped {AppKey} <= {TelerikKey} (known key)", appKey, sourceKey);
            return true;
        }
        catch
        {
            return false;
        }
    }

    private static void SetAppBrushByHeuristic(ResourceDictionary appResources, string appKey, List<BrushResource> candidates, string[] mustContainAny, string[] preferNot)
    {
        try
        {
            // Special-case background: prefer true window/app/page/root/pane background keys when available.
            if (string.Equals(appKey, "AppBackgroundBrush", StringComparison.Ordinal))
            {
                var highLevelBackgrounds = candidates
                    .Where(c => LooksLikeHighLevelBackgroundKey(c.Key))
                    .OrderBy(c => c.Key, StringComparer.OrdinalIgnoreCase)
                    .ToArray();

                if (highLevelBackgrounds.Length > 0)
                {
                    Log.Information(
                        "Telerik theming: high-level background candidates found:\n{Keys}",
                        string.Join(Environment.NewLine, highLevelBackgrounds.Select(x => $"- {x.Key}")));

                    var strong = highLevelBackgrounds
                        .Select(c => new { Candidate = c, Score = ScoreKey(c.Key, mustContainAny, preferNot) })
                        .OrderByDescending(x => x.Score)
                        .ThenBy(x => x.Candidate.Key.Length)
                        .FirstOrDefault(x => x.Score > 0)?.Candidate;

                    if (strong != null)
                    {
                        appResources[appKey] = strong.Brush;
                        Log.Information("Telerik theming: mapped {AppKey} <= {TelerikKey} (high-level background match)", appKey, strong.Key);
                        return;
                    }
                }
            }

            var chosen = candidates
                .Select(c => new { Candidate = c, Score = ScoreKey(c.Key, mustContainAny, preferNot) })
                .OrderByDescending(x => x.Score)
                .ThenBy(x => x.Candidate.Key.Length)
                .FirstOrDefault(x => x.Score > 0)?.Candidate;

            if (chosen == null)
            {
                return;
            }

            appResources[appKey] = chosen.Brush;
            Log.Information("Telerik theming: mapped {AppKey} <= {TelerikKey}", appKey, chosen.Key);
        }
        catch
        {
            // best-effort only
        }
    }

    private static bool LooksLikeHighLevelBackgroundKey(string key)
    {
        var k = key.ToLowerInvariant();

        // Exclude clearly control-specific items.
        if (k.Contains("hamburger") || k.Contains("button"))
        {
            return false;
        }

        var isHighLevelSurface = k.Contains("window")
                                 || k.Contains("application")
                                 || k.Contains("app")
                                 || k.Contains("page")
                                 || k.Contains("root")
                                 || k.Contains("pane");

        if (!isHighLevelSurface)
        {
            return false;
        }

        return k.Contains("background")
               || k.Contains("surface")
               || k.Contains("chrome")
               || k.Contains("base");
    }

    private static int ScoreKey(string key, string[] mustContainAny, string[] preferNot)
    {
        var k = key.ToLowerInvariant();

        var score = 0;
        if (mustContainAny.Length > 0)
        {
            if (!mustContainAny.Any(t => k.Contains(t, StringComparison.OrdinalIgnoreCase)))
            {
                return 0;
            }

            score += 10;
            score += mustContainAny.Count(t => k.Contains(t, StringComparison.OrdinalIgnoreCase)) * 5;
        }

        if (k.Contains("window")) score += 12;
        if (k.Contains("application") || k.Contains("app")) score += 8;
        if (k.Contains("page")) score += 6;
        if (k.Contains("root")) score += 4;

        if (k.Contains("fluent")) score += 10;
        if (k.Contains("telerik")) score += 5;
        if (k.Contains("theme")) score += 3;
        if (k.Contains("palette")) score += 2;

        foreach (var bad in preferNot)
        {
            if (k.Contains(bad, StringComparison.OrdinalIgnoreCase))
            {
                score -= 3;
            }
        }

        if (k.Contains("hover")) score -= 4;
        if (k.Contains("pressed")) score -= 4;
        if (k.Contains("focused") || k.Contains("focus")) score -= 4;
        if (k.Contains("selected")) score -= 4;
        if (k.Contains("disabled") || k.Contains("inactive")) score -= 2;

        if (k.Contains("overlay")) score -= 20;
        if (k.Contains("mergedcell")) score -= 20;
        if (k.Contains("cell")) score -= 12;
        if (k.Contains("row")) score -= 10;
        if (k.Contains("grid")) score -= 10;
        if (k.Contains("table")) score -= 8;

        if (k.Contains("hamburger")) score -= 18;
        if (k.Contains("navigationview")) score -= 18;
        if (k.Contains("pane")) score -= 10;
        if (k.Contains("button")) score -= 10;

        return score;
    }

    private static int ScoreBackgroundKey(string key)
    {
        var k = key.ToLowerInvariant();

        var score = 0;

        // Strongly prefer top-level background tokens.
        if (k.Contains("window")) score += 100;
        if (k.Contains("application") || k.Contains("app")) score += 80;
        if (k.Contains("page")) score += 70;
        if (k.Contains("root")) score += 60;

        // Penalize control-specific backgrounds.
        if (k.Contains("button")) score -= 40;
        if (k.Contains("hamburger")) score -= 60;
        if (k.Contains("navigationview")) score -= 60;
        if (k.Contains("pane")) score -= 20;
        if (k.Contains("grid") || k.Contains("cell") || k.Contains("row")) score -= 40;
        if (k.Contains("overlay")) score -= 80;

        // Penalize state backgrounds.
        if (k.Contains("hover") || k.Contains("pressed") || k.Contains("selected") || k.Contains("focus")) score -= 25;

        // Prefer Fluent/Telerik markers.
        if (k.Contains("fluent")) score += 10;
        if (k.Contains("telerik")) score += 5;

        return score;
    }

    private static void LogBrushDetails(string key, System.Windows.Media.Brush brush)
    {
        try
        {
            switch (brush)
            {
                case System.Windows.Media.SolidColorBrush scb:
                    Log.Information("Telerik theming: {Key} => SolidColorBrush {Color}", key, scb.Color.ToString());
                    break;

                case System.Windows.Media.GradientBrush gb:
                    var stops = string.Join(", ", gb.GradientStops.Select(s => $"{s.Offset:0.##}:{s.Color}"));
                    Log.Information("Telerik theming: {Key} => {Type} [{Stops}]", key, brush.GetType().Name, stops);
                    break;

                default:
                    Log.Information("Telerik theming: {Key} => {Type}", key, brush.GetType().Name);
                    break;
            }
        }
        catch
        {
            // ignore
        }
    }

    private static System.Windows.Media.Brush? ReadBrushDp(DependencyObject obj, string propertyName)
    {
        try
        {
            var dp = FindDependencyProperty(obj.GetType(), propertyName);
            return dp == null ? null : obj.GetValue(dp) as System.Windows.Media.Brush;
        }
        catch
        {
            return null;
        }
    }

    private static DependencyProperty? FindDependencyProperty(Type type, string propertyName)
    {
        while (type != null)
        {
            var field = type.GetField(propertyName + "Property", BindingFlags.Public | BindingFlags.Static);
            if (field?.GetValue(null) is DependencyProperty dp)
            {
                return dp;
            }

            type = type.BaseType!;
        }

        return null;
    }
}
