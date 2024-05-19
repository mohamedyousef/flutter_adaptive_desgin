import '../../common_libs.dart';

class AppColors {
  /// Common

  final Color grey = const Color(0xFFE1E1E5);
  final Color black20 = const Color(0xFF19191B);
  final Color accent1 = const Color(0xFF00BCAF);
  final Color disabledGrey = const Color(0xFFF8F8F8);

  final Color white = Colors.white;
  final Color black = const Color(0xFF0D0D0F);
  final Color warning = const Color(0xFFE7B500);

  final Color borderColor = const Color(0xFF3E3F48);

  final Color success100 = const Color(0xFF1E1B18);
  final Color success = const Color(0xFF4DAF00);

  final bool isDark = true;

  final Color danger100 = Colors.red.shade400;

  final Color transparent = Colors.transparent;

  ThemeData toThemeData() {
    /// Create a TextTheme and ColorScheme, that we can use to generate ThemeData
    TextTheme txtTheme = (isDark ? ThemeData.dark() : ThemeData.light()).textTheme;

    Color txtColor = white;
    ColorScheme colorScheme = ColorScheme(
      // Map our custom theme to the Material ColorScheme
      brightness: isDark ? Brightness.dark : Brightness.light,
      primary: black,
      primaryContainer: black,
      secondary: black,
      secondaryContainer: black,
      surface: Colors.white,
      onSurface: black,
      onError: Colors.white,
      onPrimary: Colors.white,
      surfaceTint: Colors.transparent,
      onSecondary: Colors.white,
      error: Colors.red.shade400,
    );

    /// Now that we have ColorScheme and TextTheme, we can create the ThemeData
    /// Also add on some extra properties that ColorScheme seems to miss
    var t = ThemeData.from(textTheme: txtTheme, colorScheme: colorScheme).copyWith(
      textSelectionTheme:
          TextSelectionThemeData(cursorColor: white, selectionColor: white, selectionHandleColor: black),
    );

    /// Return the themeData which MaterialApp can now use
    return t;
  }
}
