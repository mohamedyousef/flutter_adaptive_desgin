part of 'dashboard_view.dart';

final _singleOrderModelProvider = Provider<OrderModel>((ref) {
  throw UnimplementedError();
});

class _UserTradesView extends ConsumerWidget {
  const _UserTradesView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ordersListViewModel);
    return Container(
      padding: EdgeInsets.all($styles.insets.md),
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: $styles.colors.borderColor,
        ),
        borderRadius: BorderRadius.circular($styles.corners.md),
      ),
      child: AnimatedSwitcher(
        duration: $styles.times.med,
        child: state.maybeWhen(
          orElse: () => const Center(
            child: AppCircularIndicator(),
          ),
          error: (err) => ErrorView(
            message: err,
            onRefreshButtonPressed: () => ref.refresh(ordersListViewModel),
          ),
          data: (data) => _OrdersListView(data.orders),
        ),
      ),
    );
  }
}

class _OrdersListView extends StatelessWidget {
  final List<OrderModel> items;
  const _OrdersListView(this.items);

  @override
  Widget build(BuildContext context) {
    final isBigger = appLogic.shouldUseBiggerInsets(context);
    return TableView<OrderModel>(
      onFilterButtonPressed: () {},
      items: items,
      itemBuilder: (context, item) => ProviderScope(
        overrides: [_singleOrderModelProvider.overrideWithValue(item)],
        child: isBigger ? const _OrderLandscapeView() : const _OrderPortraitView(),
      ),
      columns: [
        'Symbol',
        'Price',
        'Type',
        'Action',
        'Quantity',
        'Date',
      ],
      perPage: 5,
    );
  }
}

class _OrderLandscapeView extends ConsumerWidget {
  const _OrderLandscapeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderModel = ref.watch(_singleOrderModelProvider);
    Widget buildSection(String title) {
      return Expanded(
        child: Center(
          child: Text(
            title,
            style: $styles.text.body.copyWith(
              color: $styles.colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      );
    }

    Widget buildAction() {
      return Expanded(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(
              $styles.insets.xs,
            ),
            decoration: BoxDecoration(
              color: $styles.colors.black20,
              border: Border.all(
                color: $styles.colors.danger100,
              ),
              borderRadius: BorderRadius.circular($styles.corners.lg),
            ),
            child: Text(
              orderModel.side,
              style: $styles.text.body.copyWith(
                color: $styles.colors.danger100,
              ),
            ),
          ),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: $styles.insets.xxs),
      padding: EdgeInsets.all($styles.insets.sm),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($styles.corners.md),
        border: Border.all(
          color: $styles.colors.borderColor,
        ),
      ),
      child: Row(
        children: [
          buildSection(orderModel.symbol),
          buildSection('${orderModel.price}'),
          buildSection(orderModel.type),
          buildAction(),
          buildSection('${orderModel.quantity}'),
          buildSection(orderModel.creationTime),
        ],
      ),
    );
  }
}

class _OrderPortraitView extends ConsumerWidget {
  const _OrderPortraitView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderModel = ref.watch(_singleOrderModelProvider);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: $styles.insets.sm),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                orderModel.symbol,
                style: $styles.text.subTitle2.copyWith(
                  color: $styles.colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '${orderModel.quantity}',
                style: $styles.text.body.copyWith(
                  color: $styles.colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Gap($styles.insets.xs),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(
                  $styles.insets.xs,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: $styles.colors.danger100,
                  ),
                  borderRadius: BorderRadius.circular($styles.corners.lg),
                ),
                child: Text(
                  orderModel.side,
                  style: $styles.text.body.copyWith(
                    color: $styles.colors.danger100,
                  ),
                ),
              ),
              Text(
                orderModel.creationTime,
                style: $styles.text.body.copyWith(
                  color: $styles.colors.grey2,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Divider(
            color: $styles.colors.borderColor,
          ),
        ],
      ),
    );
  }
}
