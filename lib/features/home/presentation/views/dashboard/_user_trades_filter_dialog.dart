part of 'dashboard_view.dart';

class _UserTradesFilterView extends ConsumerWidget {
  const _UserTradesFilterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ordersFilterViewModel);
    final model = ref.watch(ordersFilterViewModel.notifier);
    return Dialog(
      clipBehavior: Clip.hardEdge,
      backgroundColor: $styles.colors.black20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular($styles.corners.md),
      ),
      child: Padding(
        padding: EdgeInsets.all($styles.insets.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: DropDownFormFields<String?>(
                    hint: $strings.symbol,
                    items: const [
                      'DOTUSDT',
                      'ETHUSDT',
                      'MINAUSDT',
                      'FETUSDT',
                      'SOLUSDT',
                      'APTUSDT',
                      'STXUSDT',
                    ],
                    initialValue: state.symbol,
                    onSelected: (symbol) {
                      model.setSymbol(symbol as String?);
                    },
                  ),
                ),
                Gap($styles.insets.md),
                Expanded(
                  child: PriceTextFormInputField(
                    onChanged: model.setPrice,
                    initialValue: state.price != null ? '${state.price}' : '0',
                  ),
                ),
              ],
            ),
            Gap($styles.insets.sm),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Date range',
                style: $styles.text.body.copyWith(
                  color: $styles.colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Gap($styles.insets.sm),
            Row(
              children: [
                Expanded(
                  child: DateTimeTextInput(
                    hint: 'Start Date',
                    onChanged: model.setStartDate,
                    initialValue: state.start?.formattedDateString,
                  ),
                ),
                Gap($styles.insets.md),
                Expanded(
                  child: DateTimeTextInput(
                    onChanged: model.setEndDate,
                    hint: 'End Date',
                    initialValue: state.end?.formattedDateString,
                  ),
                ),
              ],
            ),
            Gap($styles.insets.md),
            Align(
              alignment: Alignment.centerRight,
              child: AppButton(
                onPressed: model.isValid
                    ? () {
                        model.submit();
                        Navigator.pop(context);
                      }
                    : null,
                label: 'Filter Table',
                textStyle: $styles.text.btn.copyWith(
                  fontWeight: FontWeight.w600,
                  color: $styles.colors.white,
                ),
                backgroundColor: $styles.colors.accent1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> showUserTradesFilterDialog(BuildContext context) {
  return showDialog(context: context, builder: (context) => const _UserTradesFilterView());
}
