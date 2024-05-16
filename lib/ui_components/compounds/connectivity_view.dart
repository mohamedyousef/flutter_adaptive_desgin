import 'package:flutter_offline/flutter_offline.dart';

import '../../common_libs.dart';

class ConnectivityView extends StatelessWidget {
  final Widget child;
  final Widget offlineView;

  const ConnectivityView({
    super.key,
    required this.child,
    required this.offlineView,
  });

  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
      connectivityBuilder: (
        BuildContext context,
        ConnectivityResult connectivity,
        Widget child,
      ) {
        if (connectivity == ConnectivityResult.none) {
          return offlineView;
        } else {
          return child;
        }
      },
      child: child,
    );
  }
}
