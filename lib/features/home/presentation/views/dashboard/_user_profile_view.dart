part of 'dashboard_view.dart';

final _singleUserPortfolioProvider = Provider<UserPortfolioModel>((ref) {
  // throw UnimplementedError();
  return const UserPortfolioModel(balance: 616.81, profits: 89.03, profitPercentage: 20, assets: 12);
});

class _UserPortfolioInfoLayout extends ConsumerWidget {
  const _UserPortfolioInfoLayout();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.sizeOf(context).width;

    final userPortfolio = ref.watch(_singleUserPortfolioProvider);
    final verticalPadding = width > 600 ? $styles.insets.md : $styles.insets.md;
    final horizontalPadding = width > 600 ? $styles.insets.lg : $styles.insets.md;
    Widget buildSeparator() => Container(
          width: width < 600 ? double.infinity : 1,
          height: width < 600 ? 1 : 80,
          color: $styles.colors.borderColor,
        );
    Widget buildSection(
      String title,
      String value,
    ) =>
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: $styles.text.body.copyWith(color: $styles.colors.grey, fontWeight: FontWeight.w400),
              ),
              Text(
                value,
                style: $styles.text.h5Bold,
              )
            ],
          ),
        );

    Widget userPortfolioInfo() {
      final sections = [
        Expanded(child: buildSection($strings.userPortfolioBalanceTitle, $strings.price(userPortfolio.profits))),
        buildSeparator(),
        Expanded(child: buildSection($strings.userPortfolioProfitsTitle, $strings.price(userPortfolio.profits))),
        buildSeparator(),
        Expanded(child: buildSection($strings.userPortfolioAssetsTitle, "${userPortfolio.assets}")),
      ];

      return AnimatedSwitcher(
        duration: const Duration(seconds: 1),
        child: (width > 600)
            ? Row(
                children: sections,
              )
            : Column(
                children: sections,
              ),
      );
    }

    Widget buildWarningMessage() {
      return Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: $styles.colors.borderColor,
              width: 1.0,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        child: Row(
          children: [
            Icon(
              Icons.info_outline,
              color: $styles.colors.warning,
            ),
            Gap($styles.insets.sm),
            Text($strings.subscriptionExpiredMessage),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ColoredBox(
          color: $styles.colors.black20,
          child: SizedBox(
            height: width < 600 ? 280 : 148,
            width: double.infinity,
            child: userPortfolioInfo(),
          ),
        ),
        buildWarningMessage(),
      ],
    );
  }
}

class _UserPortfolioView extends ConsumerWidget {
  const _UserPortfolioView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userPortfolioViewModelProvider);

    return Container(
      constraints: BoxConstraints(
        minHeight: 220.scale(),
        minWidth: double.infinity,
      ),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(color: $styles.colors.borderColor, width: 1.0),
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
            onRefreshButtonPressed: () => ref.refresh(userPortfolioViewModelProvider),
          ),
          data: (data) => ProviderScope(
            overrides: [_singleUserPortfolioProvider.overrideWithValue(data)],
            child: const _UserPortfolioInfoLayout(),
          ),
        ),
      ),
    );
  }
}
