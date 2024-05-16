import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/common_libs.dart';

class TextInput extends StatelessWidget {
  final String? initialValue;
  final String? label;
  final VoidCallback? onInfoIconTapped;
  final VoidCallback? onPrefixIconTapped;
  final TextInputAction? textInputAction;

  final bool requiredIcon;
  final String? message;
  final String? error;
  final String? hint;
  final bool obscureText;
  final String? suffixText;
  final String? prefixText;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final bool readOnly;
  final bool isEnabled;
  final Widget? suffix;
  final Widget? prefix;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  final Color? backgroundColor;
  final bool? filled;
  final TextDirection? textDirection;

  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final bool restrictField;
  final int? minLines;
  final int? maxLines;
  final InputCounterWidgetBuilder? counterWidgetBuilder;
  final int? maxLength;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final String? regExp;
  final bool needWordCapetalizations;
  final bool autoFocus;
  final TextAlign? textAlign;
  final double? height;
  final InputDecorationTheme? inputDecorationTheme;
  final FocusNode? focusNode;
  final EdgeInsets? suffixPadding;

  const TextInput({
    super.key,
    this.height,
    this.suffixPadding,
    this.inputDecorationTheme,
    this.initialValue,
    this.autoFocus = false,
    this.textInputAction,
    this.textAlign,
    this.prefix,
    this.label,
    this.maxLines,
    this.minLines,
    this.restrictField = false,
    this.onInfoIconTapped,
    this.requiredIcon = false,
    this.message,
    this.error,
    this.hint,
    this.onPrefixIconTapped,
    this.prefixIcon,
    this.prefixText,
    this.suffixText,
    this.maxLength,
    this.keyboardType,
    this.onChanged,
    this.counterWidgetBuilder,
    this.validator,
    this.onTap,
    this.controller,
    this.readOnly = false,
    this.isEnabled = true,
    this.obscureText = false,
    this.suffix,
    this.suffixIcon,
    this.hintStyle,
    this.labelStyle,
    this.backgroundColor,
    this.filled,
    this.regExp,
    this.needWordCapetalizations = true,
    this.focusNode,
    this.textDirection,
  });

  // assert(onInfoIconTapped == null || requiredIcon == false),
  @override
  Widget build(BuildContext context) {
    return Theme(
      data:
          Theme.of(context).copyWith(inputDecorationTheme: inputDecorationTheme ?? TxtInputStyle.inputDecorationTheme),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Directionality(
            textDirection: textDirection ?? Directionality.of(context),
            child: SizedBox(
              height: height,
              width: double.infinity,
              child: TextFormField(
                focusNode: focusNode,
                onTapOutside: (va) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                textInputAction: textInputAction,
                expands: height != null,
                autofocus: autoFocus,
                style: $styles.text.bodySmall.copyWith(
                  color: $styles.colors.black,
                ),
                textAlign: textAlign ?? TextAlign.start,
                initialValue: initialValue,
                keyboardType: keyboardType,
                onChanged: onChanged,
                obscureText: obscureText,
                validator: validator,
                enabled: isEnabled,
                readOnly: readOnly,
                inputFormatters: [
                  if (regExp != null)
                    FilteringTextInputFormatter.allow(
                      RegExp(regExp!),
                    ),
                  if ((maxLength ?? 0) > 0) LengthLimitingTextInputFormatter(maxLength),
                ],
                controller: controller,
                onTap: onTap,
                minLines: minLines,
                maxLines: height != null ? null : maxLines ?? 1,
                buildCounter: counterWidgetBuilder,
                textCapitalization: needWordCapetalizations ? TextCapitalization.words : TextCapitalization.none,
                decoration: InputDecoration(
                  prefixIcon: prefixIcon != null
                      ? GestureDetector(
                          onTap: onPrefixIconTapped,
                          child: Padding(padding: const EdgeInsets.all(8.0), child: prefixIcon),
                        )
                      : null,
                  isDense: true,
                  filled: filled,
                  fillColor: backgroundColor,
                  suffixText: suffixText,
                  prefixText: prefixText,
                  prefix: prefix,
                  suffix: suffix,
                  suffixIcon: Padding(
                    padding: suffixPadding ?? const EdgeInsets.all(8.0),
                    child: suffixIcon,
                  ),
                  suffixIconConstraints: const BoxConstraints(minHeight: 5, minWidth: 5),
                  contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                  hintStyle: TextStyle(color: $styles.colors.grey4),
                  hintText: hint,
                  labelText: label,
                  labelStyle: $styles.text.body.copyWith(
                    color: $styles.colors.black,
                  ),
                  constraints: BoxConstraints(
                    minHeight: 55.scale(),
                  ),
                  enabledBorder:
                      error != null ? inputDecorationTheme?.errorBorder ?? TxtInputStyle.errorInputBorder : null,
                  focusedBorder: error != null
                      ? inputDecorationTheme?.focusedErrorBorder ?? TxtInputStyle.focusedErrorInputBorder
                      : null,
                ),
              ),
            ),
          ),
          if (error != null || message != null) Gap($styles.insets.xxs),
          if (error != null && error!.isNotEmpty)
            Text(
              error!,
              style: $styles.text.bodySmall.copyWith(color: $styles.colors.danger100),
            )
          else if (message != null)
            Text(message!, style: $styles.text.bodySmall.copyWith(color: $styles.colors.grey4))
        ],
      ),
    );
  }
}
