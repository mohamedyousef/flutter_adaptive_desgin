import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/ui_components/ui_components.dart';

typedef ItemWidgetBuilder<T> = Widget Function(BuildContext context, T item);
final _tableViewModelProvider = StateNotifierProvider<_TableViewModelNotifier, List>(
  (ref) {
    return _TableViewModelNotifier();
  },
);

class TableView<T> extends ConsumerStatefulWidget {
  final ItemWidgetBuilder<T> itemBuilder;
  final int perPage;
  final List<String> columns;
  final List<T> items;
  final VoidCallback onFilterButtonPressed;

  const TableView({
    super.key,
    required this.onFilterButtonPressed,
    required this.items,
    required this.itemBuilder,
    required this.columns,
    required this.perPage,
  });

  @override
  _TableViewState<T> createState() => _TableViewState<T>();
}

class _TableViewState<T> extends ConsumerState<TableView<T>> {
  @override
  void didUpdateWidget(covariant TableView<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    Future.microtask(
      () {
        if (oldWidget.items != widget.items) {
          ref.read(_tableViewModelProvider.notifier).initialize(widget.items, widget.perPage, reset: true);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = ref.watch(_tableViewModelProvider.notifier);

    Future.microtask(
      () {
        model.initialize(widget.items, widget.perPage);
      },
    );

    return Column(
      children: [
        _TableHeader(
          onFilterButtonPressed: widget.onFilterButtonPressed,
          columns: widget.columns,
        ),
        Gap($styles.insets.sm),
        _TableBody<T>(
          itemBuilder: widget.itemBuilder,
        ),
        const _TableFooter(),
      ],
    );
  }
}

class _TableHeader extends StatelessWidget {
  final VoidCallback onFilterButtonPressed;
  final List<String> columns;
  const _TableHeader({
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
            Icons.filter_list,
            color: $styles.colors.white,
          ),
        );

    Widget buildSection(String title) {
      return Expanded(
        child: Center(
          child: Text(
            title,
            style: $styles.text.subTitle2.copyWith(
              color: $styles.colors.grey3,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }

    Widget buildColumns() => Row(
          children: columns.map((e) => buildSection(e)).toList(),
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
        ),
        Gap($styles.insets.lg),
        if (width < 600)
          Divider(
            color: $styles.colors.borderColor,
          )
        else
          buildColumns(),
      ],
    );
  }
}

class _TableBody<T> extends ConsumerWidget {
  final ItemWidgetBuilder<T> itemBuilder;

  const _TableBody({
    super.key,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(_tableViewModelProvider);
    if (items.isEmpty) {
      return Center(
        child: Text(
          $strings.noDataNetworkErrorMessage,
          style: $styles.text.body.copyWith(
            color: $styles.colors.white,
          ),
        ),
      );
    }

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => itemBuilder.call(context, items[index] as T),
      itemCount: items.length,
    );
  }
}

class _TableFooter extends ConsumerWidget {
  const _TableFooter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(_tableViewModelProvider);
    final model = ref.watch(_tableViewModelProvider.notifier);
    return Column(
      children: [
        if (!appLogic.shouldUseBiggerInsets(context))
          Divider(
            color: $styles.colors.borderColor,
          ),
        Gap($styles.insets.sm),
        Row(
          children: [
            Text(
              '${max(1, model.firstIndex)} - ${model.endIndex} of ${model.total}',
              style: $styles.text.body.copyWith(
                fontWeight: FontWeight.w400,
                color: $styles.colors.white,
              ),
            ),
            const Spacer(),
            AppButton.outline(
              buttonSize: ButtonSize.smallSize,
              color: $styles.colors.accent1,
              onPressed: model.hasPrev
                  ? () {
                      model.prev();
                    }
                  : null,
              label: '',
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.chevron_left,
                size: 24,
              ),
            ),
            Gap($styles.insets.xs),
            AppButton.outline(
              buttonSize: ButtonSize.smallSize,
              padding: EdgeInsets.zero,
              onPressed: model.hasNext
                  ? () {
                      model.next();
                    }
                  : null,
              label: '',
              icon: const Icon(
                Icons.chevron_right,
                size: 24,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _TableViewModelNotifier extends StateNotifier<List> {
  _TableViewModelNotifier() : super([]);

  int currentPage = 1;
  int perPage = 1;
  List items = [];
  bool _isInitialized = false;
  void initialize(List items, int perPage, {bool reset = false}) {
    if (_isInitialized && !reset) return;
    this.perPage = perPage;
    this.items = items;
    currentPage = 1;
    _updateState();
    _isInitialized = true;
  }

  void _updateState() {
    final startIndex = (currentPage - 1) * perPage;
    final endIndex = startIndex + perPage;
    state = items.sublist(startIndex, endIndex > items.length ? items.length : endIndex);
  }

  bool get hasNext => currentPage * perPage < items.length;
  bool get hasPrev => currentPage > 1;

  int get firstIndex => (currentPage - 1) * perPage;
  int get endIndex => firstIndex + perPage;
  int get total => items.length;

  void next() {
    if (hasNext) {
      currentPage += 1;
      _updateState();
    }
  }

  void prev() {
    if (hasPrev) {
      currentPage -= 1;
      _updateState();
    }
  }
}
