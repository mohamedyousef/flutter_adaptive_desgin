import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/features/home/presentation/views/dashboard/dashboard_view.dart';
import 'package:predictiva_task/ui_components/ui_components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.black,
      body: const _Layout(),
      appBar: const PredictivaAppBar(),
    );
  }
}

class _Layout extends StatelessWidget {
  const _Layout({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = appLogic.shouldUseBiggerInsets() ? $styles.insets.xxl : $styles.insets.md;
    return SingleChildScrollView(
      child: CenteredBox(
        padding: EdgeInsets.all(padding),
        width: min($styles.sizes.maxContentWidth, context.widthPx),
        child: const DashboardView(),
      ),
    );
  }
}
