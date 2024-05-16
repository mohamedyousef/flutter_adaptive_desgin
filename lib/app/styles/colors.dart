import '../../common_libs.dart';

class AppColors {
  /// Common
  final Color accent1 = const Color(0xFF0097A7);
  final Color accent2 = const Color(0xFFFF6C0A);
  final Color offWhite = const Color(0xFFF8ECE5);

  final Color grey0 = const Color(0xFFDFDFDF);
  final Color grey20 = const Color(0xffF6F6F6);
  final Color grey1 = const Color(0xFF9D9995);
  final Color grey2 = const Color(0xFF9D9995);
  final Color grey3 = const Color(0xFFCCCCCC);
  final Color grey4 = const Color(0xFF999999);
  final Color grey5 = const Color(0xFF666666);
  final Color grey6 = const Color(0xFF9D9995);

  final Color disabledGrey = const Color(0xFFF8F8F8);

  final Color white = Colors.white;
  final Color black = const Color(0xFF1E1B18);

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
      primary: accent1,
      primaryContainer: accent1,
      secondary: accent1,
      secondaryContainer: accent1,
      surface: Colors.white,
      onSurface: accent1,
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
          TextSelectionThemeData(cursorColor: accent1, selectionColor: accent1, selectionHandleColor: black),
    );

    /// Return the themeData which MaterialApp can now use
    return t;
  }
}
