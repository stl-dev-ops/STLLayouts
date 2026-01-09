using System;
using System.Globalization;
using System.Windows.Data;

namespace STLLayouts.WpfApp.Converters;

/// <summary>
/// Compares an enum value to a string parameter (enum name).
/// Intended for RadioButton IsChecked bindings.
/// </summary>
public sealed class EnumEqualsConverter : IValueConverter
{
    public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
    {
        if (value is null || parameter is null)
        {
            return false;
        }

        var valueString = value.ToString();
        var paramString = parameter.ToString();
        return string.Equals(valueString, paramString, StringComparison.OrdinalIgnoreCase);
    }

    public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
    {
        if (parameter is null)
        {
            return Binding.DoNothing;
        }

        if (value is bool b && b)
        {
            var enumName = parameter.ToString();
            return Enum.Parse(targetType, enumName!, ignoreCase: true);
        }

        return Binding.DoNothing;
    }
}
