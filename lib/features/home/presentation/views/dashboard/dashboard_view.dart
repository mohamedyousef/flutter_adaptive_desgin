import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/common_libs.dart';
import "package:predictiva_task/features/home/domain/models.dart";
import 'package:predictiva_task/ui_components/compounds/app_indicator.dart';
import 'package:predictiva_task/ui_components/compounds/table_view.dart';
import 'package:predictiva_task/ui_components/ui_components.dart';
part '_user_profile_view.dart';
part '_user_trades_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          _UserView(),
          _UserPortfolioView(),
          Gap(24),
          _UserTradesView(),
        ],
      ),
    );
  }
}

class _UserView extends StatelessWidget {
  const _UserView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap($styles.insets.sm),
          Text(
            'Hi Robin,',
            style: $styles.text.h5Bold,
          ),
          Gap($styles.insets.xs),
          Text(
            'Here is an overview of your account activities.',
            style: $styles.text.body.copyWith(
              color: $styles.colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
          Gap($styles.insets.lg),
        ],
      ),
    );
  }
}
