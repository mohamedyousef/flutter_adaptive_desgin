import 'package:predictiva_task/common_libs.dart';
part '_user_profile_view.dart';
part '_user_trades_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _UserProfileInfo(),
        _UserTradesView(),
      ],
    );
  }
}
