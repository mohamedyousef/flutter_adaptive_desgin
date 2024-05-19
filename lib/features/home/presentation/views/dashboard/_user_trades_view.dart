part of 'dashboard_view.dart';

class _UserTradesView extends StatelessWidget {
  const _UserTradesView();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all($styles.insets.md),
      constraints: const BoxConstraints(
        minWidth: double.infinity,
        minHeight: 300,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: $styles.colors.borderColor,
        ),
        borderRadius: BorderRadius.circular($styles.corners.md),
      ),
      child: const _OrdersListView(),
    );
  }
}

class _OrdersListView extends ConsumerWidget {
  const _OrdersListView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TableView<String>(
      onFilterButtonPressed: () {},
      items: [],
      itemBuilder: (context, item) => const SizedBox(),
      columns: [],
      onNextButtonPressed: () {},
      onPrevButtonPressed: () {},
    );
  }
}
