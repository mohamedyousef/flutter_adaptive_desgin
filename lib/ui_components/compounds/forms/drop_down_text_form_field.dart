import 'package:flutter/cupertino.dart';
import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/common_libs.dart';

class DropDownFormFields<T> extends StatefulWidget {
  final List<T> items;
  final T? initialValue;
  final String? hint;
  final ValueChanged? onSelected;
  final Widget? icon;
  final String? errorText;
  final bool readOnly;
  final bool needToResetValue;

  const DropDownFormFields({
    super.key,
    this.errorText,
    this.initialValue,
    this.readOnly = false,
    required this.items,
    this.onSelected,
    this.hint,
    this.icon,
    this.needToResetValue = false,
  });

  @override
  State createState() => _DropDownFormFieldsState<T>();
}

class _DropDownFormFieldsState<T> extends State<DropDownFormFields> {
  T? dropdownValue;
  late final TextEditingController _textEditingController = TextEditingController();

  @override
  void didUpdateWidget(covariant DropDownFormFields oldWidget) {
    if (oldWidget.initialValue != widget.initialValue) {
      setState(() {
        dropdownValue = null;
      });
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.scale(),
      child: Theme(
        data: Theme.of(context).copyWith(inputDecorationTheme: TxtInputStyle.inputDecorationTheme),
        child: IgnorePointer(
          ignoring: widget.readOnly,
          child: DropdownButtonHideUnderline(
            child: DropdownButtonFormField(
              value: dropdownValue ?? widget.initialValue,
              style: $styles.text.body.copyWith(
                color: $styles.colors.white,
              ),
              icon: Icon(CupertinoIcons.chevron_down, color: $styles.colors.enabledGrey),
              isExpanded: true,
              onChanged: (newValue) {
                setState(() {
                  dropdownValue = newValue as T?;
                });
                widget.onSelected?.call(newValue);
              },
              dropdownColor: $styles.colors.black20,
              hint: Text(
                widget.hint ?? '',
                style: $styles.text.body.copyWith(
                  color: $styles.colors.grey4,
                ),
              ),
              items: widget.items
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        '$e',
                        style: $styles.text.body,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
