import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/ui_components/compounds/connectivity_view.dart';

class OfflineModeViewScreen extends StatelessWidget {
  final Widget child;
  const OfflineModeViewScreen({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConnectivityView(
        offlineView: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                AppLocalization.of(context).noInternet,
                style: $styles.text.body.copyWith(
                  color: $styles.colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // const Spacer(),
          ],
        ),
        child: child,
      ),
    );
  }
}
