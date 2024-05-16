import 'package:predictiva_task/common_libs.dart';

enum ButtonSize {
  defaultSize,
  smallSize,
}

enum ButtonType {
  primary,
  outline,
  text,
}

enum ButtonSocialMediaType {
  facebook,
  google,
  apple,
}

class _RawButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget label;
  final Widget? icon;
  final ButtonType buttonType;
  final bool iconBefore;
  final bool loading;
  final ButtonSize size;
  final Color? color;
  final Color? borderColor;
  final Color? labelColor;
  final Color? backgroundColor;
  final BorderSide? borderSide;
  final bool isVerticalAlignment;
  final double spaceBetweenIconAndText;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final Size? maximumSize;
  final Size? minimumSize;
  final double? iconSize;
  final CrossAxisAlignment? crossAxisAlignment;
  final BorderRadius? borderRadius;

  const _RawButton({
    required this.onPressed,
    required this.label,
    this.crossAxisAlignment,
    this.iconSize,
    this.borderSide,
    this.minimumSize,
    this.maximumSize,
    this.labelColor,
    this.borderColor,
    this.padding,
    this.icon,
    this.buttonType = ButtonType.primary,
    this.iconBefore = false,
    this.loading = false,
    this.color,
    this.isVerticalAlignment = false,
    required this.size,
    this.spaceBetweenIconAndText = 0,
    this.backgroundColor,
    this.textStyle,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final icon = this.icon;

    ButtonStyle buttonStyle;

    switch (buttonType) {
      case ButtonType.primary:
        buttonStyle =
            size == ButtonSize.defaultSize ? AppButtonStyle.defaultButtonStyle : AppButtonStyle.smallDefaultButtonStyle;
        if (color != null) {
          buttonStyle = buttonStyle.copyWith(
            backgroundColor: MaterialStateProperty.all<Color>(color!),
          );
        }

        if (labelColor != null) {
          buttonStyle = buttonStyle.copyWith(
            foregroundColor: MaterialStateProperty.all<Color>(labelColor!),
          );
        }

        if (borderRadius != null) {
          buttonStyle = buttonStyle.copyWith(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: borderRadius!),
            ),
          );
        }

        break;
      case ButtonType.outline:
        buttonStyle =
            size == ButtonSize.defaultSize ? AppButtonStyle.outlineButtonStyle : AppButtonStyle.smallOutlineButtonStyle;
        if (color != null) {
          buttonStyle = buttonStyle.copyWith(
            foregroundColor: MaterialStateProperty.all<Color>(color!),
          );
        }
        if (borderColor != null) {
          buttonStyle = buttonStyle.copyWith(
            side: MaterialStateProperty.resolveWith<BorderSide>((Set<MaterialState> states) {
              final outlineBorder =
                  states.contains(MaterialState.disabled) ? $styles.colors.accent1.withOpacity(0.3) : borderColor!;
              return borderSide?.copyWith(color: borderColor) ?? BorderSide(color: outlineBorder, width: 1);
            }),
          );
        }
        if (borderRadius != null) {
          buttonStyle = buttonStyle.copyWith(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: borderRadius!),
            ),
          );
        }
        break;

      case ButtonType.text:
        buttonStyle =
            size == ButtonSize.defaultSize ? AppButtonStyle.textButtonStyle : AppButtonStyle.smallTextButtonStyle;
        if (color != null) {
          buttonStyle = buttonStyle.copyWith(
            foregroundColor: MaterialStateProperty.all<Color>(color!),
          );
        }
        break;
    }

    if (backgroundColor != null) {
      buttonStyle = buttonStyle.copyWith(backgroundColor: MaterialStatePropertyAll(backgroundColor));
    }
    if (textStyle != null) {
      buttonStyle = buttonStyle.copyWith(
        textStyle: MaterialStatePropertyAll(textStyle),
      );
    }

    if (padding != null) {
      buttonStyle = buttonStyle.copyWith(
        padding: MaterialStatePropertyAll(padding),
      );
    }

    final foregroundColor = buttonType == ButtonType.outline
        ? AppButtonStyle.outlineForegroundColor
        : AppButtonStyle.defaultForegroundColor;
    final iconSizes = iconSize ?? (size == ButtonSize.defaultSize ? 20.0 : 16.0);

    Widget child;

    if (icon != null) {
      child = _LabelWithIconChild(
        label: label,
        icon: icon,
        crossAxisAlignment: crossAxisAlignment,
        iconColor: foregroundColor,
        iconSize: iconSizes,
        iconBefore: iconBefore,
        buttonSize: size,
        spaceBetweenIconAndText: spaceBetweenIconAndText,
        isVerticalAlignment: isVerticalAlignment,
      );
    } else {
      child = label;
    }

    Widget content = child;

    return TextButton(
      onPressed: loading ? null : onPressed,
      style: buttonStyle,
      child: content,
    );
  }
}

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final Widget? icon;
  final bool loading;
  final bool iconBefore;
  final ButtonType _buttonType;
  final ButtonSize buttonSize;
  final Color? color;
  final Color? labelColor;
  final Color? borderColor;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;

  final bool isVerticalAlignment;
  final double spaceBetweenIconAndText;
  final TextStyle? textStyle;
  final BorderSide? borderSide;

  final EdgeInsets? padding;
  final Size? maximumSize;
  final Size? minimumSize;
  final double? iconSize;
  final CrossAxisAlignment? crossAxisAlignment;

  const AppButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.iconSize,
    this.maximumSize,
    this.minimumSize,
    this.padding,
    this.icon,
    this.backgroundColor,
    this.textStyle,
    this.labelColor,
    this.loading = false,
    this.spaceBetweenIconAndText = 8,
    this.isVerticalAlignment = false,
    this.iconBefore = false,
    this.buttonSize = ButtonSize.defaultSize,
    this.color,
    this.crossAxisAlignment,
    this.borderRadius,
  })  : _buttonType = ButtonType.primary,
        borderColor = null,
        borderSide = null;

  const AppButton.text({
    super.key,
    required this.onPressed,
    required this.label,
    this.spaceBetweenIconAndText = 8,
    this.padding,
    this.icon,
    this.iconSize,
    this.maximumSize,
    this.minimumSize,
    this.loading = false,
    this.iconBefore = false,
    this.isVerticalAlignment = false,
    this.buttonSize = ButtonSize.defaultSize,
    this.color,
    this.backgroundColor,
    this.textStyle,
    this.crossAxisAlignment,
    this.borderRadius,
  })  : labelColor = null,
        borderColor = null,
        borderSide = null,
        _buttonType = ButtonType.text;

  const AppButton.outline({
    super.key,
    required this.onPressed,
    required this.label,
    this.padding,
    this.borderColor,
    this.maximumSize,
    this.minimumSize,
    this.iconSize,
    this.icon,
    this.loading = false,
    this.spaceBetweenIconAndText = 8,
    this.iconBefore = false,
    this.isVerticalAlignment = false,
    this.buttonSize = ButtonSize.defaultSize,
    this.color,
    this.backgroundColor,
    this.textStyle,
    this.borderSide,
    this.crossAxisAlignment,
    this.borderRadius,
  })  : labelColor = null,
        _buttonType = ButtonType.outline;

  @override
  Widget build(BuildContext context) {
    final button = _RawButton(
      label: Text(
        label,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
      ),
      labelColor: labelColor,
      borderSide: borderSide,
      borderColor: borderColor,
      padding: padding,
      icon: icon,
      iconSize: iconSize,
      onPressed: onPressed,
      loading: loading,
      size: buttonSize,
      minimumSize: minimumSize,
      maximumSize: maximumSize,
      color: color,
      iconBefore: iconBefore,
      buttonType: _buttonType,
      spaceBetweenIconAndText: spaceBetweenIconAndText,
      isVerticalAlignment: isVerticalAlignment,
      backgroundColor: backgroundColor,
      textStyle: textStyle,
      crossAxisAlignment: crossAxisAlignment,
      borderRadius: borderRadius,
    );

    return button;
  }
}

class _LabelWithIconChild extends StatelessWidget {
  const _LabelWithIconChild({
    Key? key,
    required this.label,
    required this.icon,
    required this.iconColor,
    required this.iconSize,
    required this.buttonSize,
    this.crossAxisAlignment,
    this.spaceBetweenIconAndText = 8,
    this.isVerticalAlignment = false,
    this.iconBefore = false,
  }) : super(key: key);

  final double spaceBetweenIconAndText;
  final Widget label;
  final Widget icon;
  final Color iconColor;
  final double iconSize;
  final bool iconBefore;
  final ButtonSize buttonSize;
  final bool isVerticalAlignment;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final gap = spaceBetweenIconAndText;

    final iconWidget = IconTheme(
      data: Theme.of(context).iconTheme.copyWith(
            size: iconSize,
            color: iconColor,
          ),
      child: icon,
    );

    return isVerticalAlignment
        ? Column(
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              iconBefore ? iconWidget : Flexible(child: label),
              Gap(gap),
              iconBefore ? Flexible(child: label) : iconWidget,
            ],
          )
        : Row(
            mainAxisAlignment:
                crossAxisAlignment == CrossAxisAlignment.start ? MainAxisAlignment.start : MainAxisAlignment.center,
            mainAxisSize: crossAxisAlignment != null ? MainAxisSize.max : MainAxisSize.min,
            children: <Widget>[
              iconBefore ? iconWidget : Flexible(child: label),
              Gap(gap),
              iconBefore ? Flexible(child: label) : iconWidget,
            ],
          );
  }
}