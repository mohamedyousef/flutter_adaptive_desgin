part of 'dashboard_view.dart';

final _singleUserPortfolioProvider = Provider<UserPortfolioModel>((ref) {
  throw UnimplementedError();
});

class _UserPortfolioInfoLayout extends ConsumerWidget {
  const _UserPortfolioInfoLayout();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.sizeOf(context).width;
    final isBiggerInsets = appLogic.shouldUseBiggerInsets(context);

    final userPortfolio = ref.watch(_singleUserPortfolioProvider);
    final verticalPadding = isBiggerInsets ? $styles.insets.md : $styles.insets.md;
    final horizontalPadding = isBiggerInsets ? $styles.insets.lg : $styles.insets.md;

    // todo convert it to component
    Widget buildPercentageBadge() {
      return Container(
        padding: EdgeInsets.all(
          $styles.insets.xs,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: $styles.colors.success,
          ),
          borderRadius: BorderRadius.circular($styles.corners.lg),
        ),
        child: Row(
          children: [
            Icon(
              CupertinoIcons.arrow_up_right,
              color: $styles.colors.success,
            ),
            Text(
              $strings.userPortfolioProfitsPercentageValue(userPortfolio.profitPercentage),
              style: $styles.text.body.copyWith(
                color: $styles.colors.success,
              ),
            ),
          ],
        ),
      );
    }

    Widget buildSeparator() => Container(
          width: !isBiggerInsets ? double.infinity : 1,
          height: !isBiggerInsets ? 1 : 80,
          color: $styles.colors.borderColor,
        );
    Widget buildSection(
      String title,
      String value, {
      Widget? badge,
    }) =>
        Align(
          alignment: Alignment.centerLeft,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final bottomWidget = [
                Text(
                  value,
                  style: $styles.text.h5Bold,
                ),
                if (badge != null) ...[
                  Gap($styles.insets.sm),
                  badge,
                ],
              ];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: $styles.text.body.copyWith(color: $styles.colors.grey, fontWeight: FontWeight.w400),
                  ),
                  Gap($styles.insets.xxs),
                  FittedBox(
                    child: Row(
                      children: bottomWidget,
                    ),
                  ),
                  Gap($styles.insets.xs),
                ],
              );
            },
          ),
        );

    Widget userPortfolioInfo() {
      final padding = isBiggerInsets ? $styles.insets.lg : $styles.insets.sm;
      final sections = [
        Gap(padding),
        Expanded(
          child: buildSection(
            $strings.userPortfolioBalanceTitle,
            $strings.price(userPortfolio.balance),
          ),
        ),
        Gap(padding),
        buildSeparator(),
        Gap(padding),
        Expanded(
          child: buildSection(
            $strings.userPortfolioProfitsTitle,
            $strings.price(userPortfolio.profits),
            badge: buildPercentageBadge(),
          ),
        ),
        Gap(padding),
        buildSeparator(),
        Gap(padding),
        Expanded(child: buildSection($strings.userPortfolioAssetsTitle, "${userPortfolio.assets}")),
      ];

      return AnimatedSwitcher(
        duration: const Duration(seconds: 1),
        child: (width >= 600)
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
          color: $styles.colors.black,
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
        Container(
          padding: EdgeInsets.symmetric(horizontal: isBiggerInsets ? 0.0 : $styles.insets.sm),
          child: SizedBox(
            height: !isBiggerInsets ? 300 : 148,
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
        border: Border.all(
          color: $styles.colors.borderColor,
        ),
        color: $styles.colors.black20,
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
