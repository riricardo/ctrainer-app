import 'package:flutter/material.dart';

class AppTheme {
  static const gold = Color(0xFFD3A635);
  static const goldLight = Color(0xFFECC351);
  static const goldDark = Color(0xFFB0841F);

  static const darkBg = Color(0xFF0B0B0B);
  static const darkSurface = Color(0xFF221B08);

  static ThemeData light() {
    const scheme = ColorScheme(
      brightness: Brightness.light,
      primary: goldDark,
      onPrimary: Colors.white,
      secondary: gold,
      onSecondary: Colors.black,
      tertiary: goldLight,
      onTertiary: Colors.black,
      error: Color(0xFFB3261E),
      onError: Colors.white,
      background: Color(0xFFF7F7F7),
      onBackground: Color(0xFF111111),
      surface: Colors.white,
      onSurface: Color(0xFF111111),
    );

    return _base(scheme);
  }

  static ThemeData dark() {
    const scheme = ColorScheme(
      brightness: Brightness.dark,
      primary: gold,
      onPrimary: Colors.black,
      secondary: goldLight,
      onSecondary: Colors.black,
      tertiary: goldDark,
      onTertiary: Colors.black,
      error: Color(0xFFCF6679),
      onError: Colors.black,
      background: darkBg,
      onBackground: Colors.white,
      surface: darkSurface,
      onSurface: Colors.white,
    );

    return _base(scheme);
  }

  static ThemeData _base(ColorScheme scheme) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: scheme.background,

      appBarTheme: AppBarTheme(
        backgroundColor: scheme.surface,
        foregroundColor: scheme.onSurface,
        elevation: 0,
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: scheme.surface,
        selectedItemColor: scheme.primary,
        unselectedItemColor: scheme.onSurface.withOpacity(0.65),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: scheme.primary,
          foregroundColor: scheme.onPrimary,
        ),
      ),

      cardTheme: CardThemeData(
        color: scheme.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
