import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/common_libs.dart' hide TextInput;
import 'package:predictiva_task/ui_components/basics/text_input.dart';

class DateTimeTextInput extends StatefulWidget {
  final ValueChanged<DateTime>? onChanged;
  final String? initialValue;
  final String? hint;
  final String? label;

  const DateTimeTextInput({
    super.key,
    this.onChanged,
    this.initialValue,
    this.hint,
    this.label,
  });

  @override
  State<DateTimeTextInput> createState() => _DateTimeFieldState();
}

class _DateTimeFieldState extends State<DateTimeTextInput> {
  String? dateTime;
  late TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController(text: widget.initialValue);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant DateTimeTextInput oldWidget) {
    if (oldWidget.initialValue != widget.initialValue) textEditingController.text = widget.initialValue ?? '';
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return TextInput(
      suffixIcon: Icon(
        Icons.calendar_today_outlined,
        color: $styles.colors.grey3,
        size: 24,
      ),
      textInputAction: TextInputAction.done,
      hint: widget.hint,
      controller: textEditingController,
      readOnly: true,
      onTap: () async {
        final picked = await showDatePicker(
          lastDate: DateTime.now(),
          context: context,
          firstDate: DateTime.now(),
        );
        if (picked != null) {
          dateTime = DateFormatter.convertToStringDateFormat(picked);
          textEditingController.text = dateTime ?? '';
          widget.onChanged?.call(picked);
        }
      },
      keyboardType: TextInputType.datetime,
    );
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
}
