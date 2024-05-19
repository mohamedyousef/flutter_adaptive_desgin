import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/ui_components/ui_components.dart';

typedef ItemWidgetBuilder<T> = Widget Function(BuildContext context, T item);

class TableView<T> extends StatelessWidget {
  final ItemWidgetBuilder<T> itemBuilder;

  final List<String> columns;
  final List<T> items;
  final int perPage;
  final VoidCallback onFilterButtonPressed;
  final VoidCallback? onNextButtonPressed;
  final VoidCallback? onPrevButtonPressed;

  const TableView({
    super.key,
    this.perPage = 5,
    required this.onFilterButtonPressed,
    required this.onNextButtonPressed,
    required this.onPrevButtonPressed,
    required this.items,
    required this.itemBuilder,
    required this.columns,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _TableHeader(
          onFilterButtonPressed: onFilterButtonPressed,
          columns: columns,
        ),
        Gap($styles.insets.sm),
        Divider(
          color: $styles.colors.borderColor,
        ),
        Gap($styles.insets.sm),
        _TableBody(
          items: items,
        ),
        Divider(
          color: $styles.colors.borderColor,
        ),
        Gap($styles.insets.sm),
        _TableFooter(
          onNextButtonPressed: onNextButtonPressed,
          onPrevButtonPressed: onPrevButtonPressed,
        ),
      ],
    );
  }
}

class _TableHeader extends StatelessWidget {
  final VoidCallback onFilterButtonPressed;
  final List<String> columns;
  const _TableHeader({
    super.key,
    required this.columns,
    required this.onFilterButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    Widget buildFilterButton() => AppButton.outline(
          borderColor: $styles.colors.borderColor,
          textStyle: $styles.text.btn.copyWith(
            color: $styles.colors.white,
          ),
          color: $styles.colors.white,
          onPressed: onFilterButtonPressed,
          label: width < 600 ? '' : $strings.filter,
          icon: Icon(
            Icons.filter,
            color: $styles.colors.white,
          ),
        );
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                $strings.openTrades,
                style: $styles.text.subTitle1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            buildFilterButton(),
          ],
        )
      ],
    );
  }
}

class _TableBody<T> extends StatelessWidget {
  final List<T> items;
  const _TableBody({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _TableFooter extends StatelessWidget {
  final VoidCallback? onNextButtonPressed;
  final VoidCallback? onPrevButtonPressed;

  const _TableFooter({super.key, this.onNextButtonPressed, this.onPrevButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
  }
}
