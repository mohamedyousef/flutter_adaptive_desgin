// ignore_for_file: library_private_types_in_public_api

import 'package:predictiva_task/app/core/helper/extensions.dart';
import 'package:predictiva_task/common_libs.dart';

import 'colors.dart';

export 'colors.dart';

@immutable
class AppStyle {
  AppStyle({Size? screenSize}) {
    if (screenSize == null) {
      scale = 1;
      return;
    }
    final shortestSide = screenSize.shortestSide;
    const tabletXl = 1000;
    const tabletLg = 800;
    const tabletSm = 600;
    const phoneLg = 400;
    if (shortestSide > tabletXl) {
      scale = 1.25;
    } else if (shortestSide > tabletLg) {
      scale = 1.15;
    } else if (shortestSide > tabletSm) {
      scale = 1;
    } else if (shortestSide > phoneLg) {
      scale = .9; // phone
    } else {
      scale = .85; // small phone
    }
    //debugPrint('screenSize=$screenSize, scale=$scale');
  }

  late final double scale;

  final Brightness brightness = Brightness.dark;

  late final systemUiOverlayStyle = SystemUiOverlayStyle(
    statusBarColor: $styles.colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: brightness,
    systemNavigationBarColor: $styles.colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  );

  /// The current theme colors for the app
  final AppColors colors = AppColors();

  /// Rounded edge corner radii
  late final _Corners corners = _Corners();

  late final _Shadows shadows = _Shadows();

  /// Padding and margin values
  late final _Insets insets = _Insets(scale);

  /// Text styles
  late final _Text text = _Text(scale);

  /// Animation Durations
  final _Times times = _Times();

  /// Shared sizes
  late final _Sizes sizes = _Sizes();
}

@immutable
class _Text {
  _Text(this._scale);

  final double _scale;

  final Map<String, TextStyle> _contentFonts = {
    'en': const TextStyle(fontFamily: 'inter'),
  };

  TextStyle getFontForLocale() {
    if (localeLogic.isLoaded) {
      return _contentFonts.entries
          .firstWhere((x) => x.key == $strings.localeName, orElse: () => _contentFonts.entries.first)
          .value;
    } else {
      return _contentFonts.entries.first.value;
    }
  }

  TextStyle get titleFont => getFontForLocale();

  TextStyle get quoteFont => getFontForLocale();

  TextStyle get contentFont => getFontForLocale();

  late final TextStyle dropCase = _createFont(quoteFont, sizePx: 56, heightPx: 20);

  late final TextStyle h1 = _createFont(titleFont, sizePx: 64, heightPx: 62);
  late final TextStyle h2 = _createFont(titleFont, sizePx: 32, heightPx: 60);
  late final TextStyle h3 = _createFont(titleFont, sizePx: 20, heightPx: 36, weight: FontWeight.w600);
  late final TextStyle h4 = _createFont(contentFont, sizePx: 14, heightPx: 23, spacingPc: 5, weight: FontWeight.w600);

  late final TextStyle title1 = _createFont(titleFont, sizePx: 16, heightPx: 26, spacingPc: 5);
  late final TextStyle title1Bold =
      _createFont(titleFont, sizePx: 16, heightPx: 26, spacingPc: 5, weight: FontWeight.w700);

  late final TextStyle title2 = _createFont(titleFont, sizePx: 14, heightPx: 16.38);
  late final TextStyle number = _createFont(titleFont, sizePx: 20, heightPx: 26, spacingPc: 5);

  late final TextStyle body = _createFont(contentFont, sizePx: 16, heightPx: 26);
  late final TextStyle bodyBold = _createFont(contentFont, sizePx: 16, heightPx: 26, weight: FontWeight.w600);
  late final TextStyle bodySmall = _createFont(contentFont, sizePx: 14, heightPx: 23);
  late final TextStyle bodySmallBold = _createFont(contentFont, sizePx: 14, heightPx: 23, weight: FontWeight.w600);
  late final TextStyle bodyTiny = _createFont(contentFont, sizePx: 12, heightPx: 23);
  late final TextStyle bodyNano = _createFont(contentFont, sizePx: 11, heightPx: 23);
  late final TextStyle bodyNanoBold = _createFont(contentFont, sizePx: 11, heightPx: 23, weight: FontWeight.bold);

  late final TextStyle quote1 =
      _createFont(quoteFont, sizePx: 32, heightPx: 40, weight: FontWeight.w600, spacingPc: -3);
  late final TextStyle quote2 = _createFont(quoteFont, sizePx: 21, heightPx: 32, weight: FontWeight.w400);
  late final TextStyle quote2Sub = _createFont(body, sizePx: 16, heightPx: 40, weight: FontWeight.w400);

  late final TextStyle caption =
      _createFont(contentFont, sizePx: 14, heightPx: 20, weight: FontWeight.w500).copyWith(fontStyle: FontStyle.italic);

  late final TextStyle callout =
      _createFont(contentFont, sizePx: 16, heightPx: 26, weight: FontWeight.w600).copyWith(fontStyle: FontStyle.italic);
  late final TextStyle btn = _createFont(contentFont, sizePx: 14, weight: FontWeight.w500, spacingPc: 2, heightPx: 14);

  TextStyle _createFont(TextStyle style,
      {required double sizePx, double? heightPx, double? spacingPc, FontWeight? weight}) {
    sizePx *= _scale;
    if (heightPx != null) {
      heightPx *= _scale;
    }
    return style.copyWith(
      fontSize: sizePx,
      height: heightPx != null ? (heightPx / sizePx) : style.height,
      letterSpacing: spacingPc != null ? sizePx * spacingPc * 0.01 : style.letterSpacing,
      fontWeight: weight,
    );
  }
}

@immutable
class _Times {
  final Duration fast = const Duration(milliseconds: 300);
  final Duration med = const Duration(milliseconds: 600);
  final Duration slow = const Duration(milliseconds: 900);
  final Duration pageTransition = const Duration(milliseconds: 200);
}

@immutable
class _Corners {
  late final double sm = 4;
  late final double md = 8;
  late final double lg = 32;
}

class _Sizes {
  double get maxContentWidth1 => 800;

  double get maxContentWidth2 => 600;

  double get maxContentWidth3 => 500;
  final Size minAppSize = const Size(380, 650);
}

@immutable
class _Insets {
  _Insets(this._scale);

  final double _scale;

  late final double xxs = 4 * _scale;
  late final double xs = 8 * _scale;
  late final double sm = 16 * _scale;
  late final double md = 24 * _scale;
  late final double lg = 32 * _scale;
  late final double xl = 48 * _scale;
  late final double xxl = 56 * _scale;
  late final double offset = 80 * _scale;
}

@immutable
class _Shadows {
  final textSoft = [
    Shadow(color: Colors.black.withOpacity(.25), offset: const Offset(0, 2), blurRadius: 4),
  ];
  final text = [
    Shadow(color: Colors.black.withOpacity(.6), offset: const Offset(0, 2), blurRadius: 2),
  ];
  final textStrong = [
    Shadow(color: Colors.black.withOpacity(.6), offset: const Offset(0, 4), blurRadius: 6),
  ];
}

abstract class TxtInputStyle {
  TxtInputStyle._();

  static final inputDecorationTheme = InputDecorationTheme(
    border: _enabledInputBorder,
    disabledBorder: _disabledInputBorder,
    enabledBorder: _enabledInputBorder,
    focusedBorder: _focusedInputBorder,
    errorBorder: errorInputBorder,
    focusedErrorBorder: focusedErrorInputBorder,
    labelStyle: $styles.text.bodySmall,
    hintStyle: $styles.text.bodySmall,
    helperStyle: $styles.text.bodySmall,
    errorStyle: $styles.text.bodySmall.copyWith(color: $styles.colors.danger100),
  );

  static final _disabledInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: $styles.colors.grey3, width: 1),
    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
  );
  static final _focusedInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: $styles.colors.accent1, width: 1),
    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
  );

  static final _enabledInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: $styles.colors.grey3, width: 1),
    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
  );

  static final searchInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: $styles.colors.grey3, width: 1),
    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
  );
  static final errorInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: $styles.colors.danger100, width: 1),
    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
  );

  static final focusedErrorInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: $styles.colors.danger100, width: 1.5),
    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
  );
}

abstract class AppButtonStyle {
  AppButtonStyle._();

  static final _buttonShape = MaterialStateProperty.all<RoundedRectangleBorder>(
    const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
  );

  static final defaultForegroundColor = $styles.colors.white;
  static final outlineForegroundColor = $styles.colors.accent1;
  static final _defaultBackgroundColor = $styles.colors.accent1;
  static final _outlineBackgroundColor = $styles.colors.transparent;

  static final _elevation = MaterialStateProperty.all<double>(0);

  static final _defaultMinimumHeight = 49.0.scale();
  static final _defaultMinimumWidth = 72.0.scale();

  static final _smallMinimumHeight = 28.0.scale();
  static final _smallMinimumWidth = 56.0.scale();

  static final _defaultMinimumSize = MaterialStateProperty.all<Size>(Size(_defaultMinimumWidth, _defaultMinimumHeight));
  static final _smallMinimumSize = MaterialStateProperty.all<Size>(Size(_smallMinimumWidth, _smallMinimumHeight));

  static final _defaultFixedSize = MaterialStateProperty.all<Size>(Size.fromHeight(_defaultMinimumHeight));
  static final _smallFixedSize = MaterialStateProperty.all<Size>(Size.fromHeight(_smallMinimumHeight));

  static final _defaultPadding =
      MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10));
  static final _smallPadding =
      MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4));

  static final _defaultTextStyle = MaterialStateProperty.all<TextStyle>($styles.text.btn);
  static final _smallTextStyle = MaterialStateProperty.all<TextStyle>($styles.text.btn);

  static final defaultButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return $styles.colors.grey3;
      }
      return _defaultBackgroundColor;
    }),
    foregroundColor: MaterialStateProperty.all<Color>(defaultForegroundColor),
    elevation: _elevation,
    shape: _buttonShape,
    minimumSize: _defaultMinimumSize,
    fixedSize: _defaultFixedSize,
    padding: _defaultPadding,
    textStyle: _defaultTextStyle,
  );

  static final textButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(_outlineBackgroundColor),
    foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return $styles.colors.grey3;
      }
      return outlineForegroundColor;
    }),
    elevation: _elevation,
    shape: _buttonShape,
    minimumSize: _defaultMinimumSize,
    fixedSize: _defaultFixedSize,
    padding: _defaultPadding,
    textStyle: _defaultTextStyle,
    side: null,
  );

  static final outlineButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(_outlineBackgroundColor),
    foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return $styles.colors.grey3;
      }
      return outlineForegroundColor;
    }),
    elevation: _elevation,
    shape: _buttonShape,
    minimumSize: _defaultMinimumSize,
    fixedSize: _defaultFixedSize,
    padding: _defaultPadding,
    textStyle: _defaultTextStyle,
    side: MaterialStateProperty.resolveWith<BorderSide>((Set<MaterialState> states) {
      final color = states.contains(MaterialState.disabled) ? $styles.colors.grey3 : outlineForegroundColor;
      return BorderSide(color: color, width: 1);
    }),
  );

  static final smallDefaultButtonStyle = _makeSmallSizeStyle(defaultButtonStyle);
  static final smallOutlineButtonStyle = _makeSmallSizeStyle(outlineButtonStyle);
  static final smallTextButtonStyle = _makeSmallSizeStyle(textButtonStyle);

  static ButtonStyle _makeSmallSizeStyle(ButtonStyle style) {
    return style.copyWith(
      minimumSize: _smallMinimumSize,
      fixedSize: _smallFixedSize,
      padding: _smallPadding,
      textStyle: _smallTextStyle,
    );
  }
}
