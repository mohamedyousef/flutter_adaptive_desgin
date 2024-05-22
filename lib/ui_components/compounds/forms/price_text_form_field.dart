import 'package:predictiva_task/common_libs.dart' hide TextInput;
import 'package:predictiva_task/ui_components/basics/text_input.dart';

class PriceTextFormInputField extends StatelessWidget {
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final bool autoFocus;
  final bool readOnly;

  final String? errorText;
  final String? initialValue;
  final double? height;

  const PriceTextFormInputField({
    super.key,
    this.height,
    this.onChanged,
    this.errorText,
    this.initialValue,
    this.validator,
    this.autoFocus = false,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextInput(
      error: errorText,
      height: height,
      autoFocus: autoFocus,
      textInputAction: TextInputAction.done,
      hint: 'Price',
      readOnly: readOnly,
      keyboardType: TextInputType.number,
      validator: validator,
      onChanged: onChanged,
      initialValue: initialValue,
    );
  }
}
