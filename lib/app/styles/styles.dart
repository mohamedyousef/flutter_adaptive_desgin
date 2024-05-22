// ignore_for_file: library_private_types_in_public_api

import 'package:predictiva_task/app/core/helper/extensions.dart';
import 'package:predictiva_task/common_libs.dart';

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

  TextStyle get contentFont => getFontForLocale();

  late final TextStyle h5 = _createFont(titleFont, sizePx: 24, heightPx: 28.8);
  late final TextStyle h5Bold = _createFont(titleFont, sizePx: 24, heightPx: 28.8, weight: FontWeight.w600);
  late final TextStyle subTitle1 = _createFont(contentFont, sizePx: 18, heightPx: 26.1);
  late final TextStyle subTitle2 = _createFont(contentFont, sizePx: 16, heightPx: 23.2);

  late final TextStyle body = _createFont(contentFont, sizePx: 16, heightPx: 23.2);
  late final TextStyle bodyBold = _createFont(contentFont, sizePx: 16, heightPx: 26, weight: FontWeight.w600);

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
  double get maxContentWidth => 1350;

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
    // labelStyle: $styles.text.bodySmall,
    // hintStyle: $styles.text.bodySmall,
    // helperStyle: $styles.text.bodySmall,
    // errorStyle: $styles.text.bodySmall.copyWith(color: $styles.colors.danger100),
  );

  static final _disabledInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: $styles.colors.borderColor, width: 1),
    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
  );
  static final _focusedInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: $styles.colors.accent1, width: 1),
    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
  );

  static final _enabledInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: $styles.colors.borderColor, width: 1),
    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
  );

  static final searchInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: $styles.colors.borderColor, width: 1),
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

  static final _buttonShape = WidgetStateProperty.all<RoundedRectangleBorder>(
    const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
  );

  static final defaultForegroundColor = $styles.colors.white;
  static final outlineForegroundColor = $styles.colors.white;
  static final _defaultBackgroundColor = $styles.colors.borderColor;
  static final _outlineBackgroundColor = $styles.colors.transparent;

  static final _elevation = WidgetStateProperty.all<double>(0);

  static final _defaultMinimumHeight = 49.0.scale();
  static final _defaultMinimumWidth = 72.0.scale();

  static final _smallMinimumHeight = 40.0.scale();
  static final _smallMinimumWidth = 40.0.scale();

  static final _defaultMinimumSize = WidgetStateProperty.all<Size>(Size(_defaultMinimumWidth, _defaultMinimumHeight));
  static final _smallMinimumSize = WidgetStateProperty.all<Size>(Size(_smallMinimumWidth, _smallMinimumHeight));

  static final _defaultFixedSize = WidgetStateProperty.all<Size>(Size.fromHeight(_defaultMinimumHeight));
  static final _smallFixedSize = WidgetStateProperty.all<Size>(Size.fromHeight(_smallMinimumHeight));

  static final _defaultPadding =
      WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10));
  static final _smallPadding =
      WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4));

  static final _defaultTextStyle = WidgetStateProperty.all<TextStyle>($styles.text.btn);
  static final _smallTextStyle = WidgetStateProperty.all<TextStyle>($styles.text.btn);

  static final defaultButtonStyle = ButtonStyle(
    backgroundColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return $styles.colors.disabledGrey;
      }
      return _defaultBackgroundColor;
    }),
    foregroundColor: WidgetStateProperty.all<Color>(defaultForegroundColor),
    elevation: _elevation,
    shape: _buttonShape,
    minimumSize: _defaultMinimumSize,
    fixedSize: _defaultFixedSize,
    padding: _defaultPadding,
    textStyle: _defaultTextStyle,
  );

  static final textButtonStyle = ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(_outlineBackgroundColor),
    foregroundColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return $styles.colors.grey;
      }
      return outlineForegroundColor;
    }),
    elevation: _elevation,
    shape: _buttonShape,
    minimumSize: _defaultMinimumSize,
    fixedSize: _defaultFixedSize,
    padding: _defaultPadding,
    textStyle: _defaultTextStyle,
  );

  static final outlineButtonStyle = ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(_outlineBackgroundColor),
    foregroundColor: WidgetStateProperty.resolveWith<Color>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return $styles.colors.disabledGrey;
        }
        return outlineForegroundColor;
      },
    ),
    elevation: _elevation,
    shape: _buttonShape,
    minimumSize: _defaultMinimumSize,
    fixedSize: _defaultFixedSize,
    padding: _defaultPadding,
    textStyle: _defaultTextStyle,
    iconColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      final color = states.contains(WidgetState.disabled) ? $styles.colors.disabledGrey : $styles.colors.enabledGrey;
      return color;
    }),
    side: WidgetStatePropertyAll(
      BorderSide(
        color: $styles.colors.borderColor,
      ),
    ),
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
