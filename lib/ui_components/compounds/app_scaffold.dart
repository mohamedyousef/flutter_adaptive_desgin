import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/common_libs.dart';

import 'app_scroll_behavior.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  static AppStyle get style => _style;
  static AppStyle _style = AppStyle();

  @override
  Widget build(BuildContext context) {
    // Listen to the device size, and update AppStyle when it changes
    final mq = MediaQuery.of(context);
    appLogic.handleAppSizeChanged(mq.size);

    // Create a style object that will be passed down the widget tree
    _style = AppStyle(screenSize: context.sizePx);
    return KeyedSubtree(
      key: ValueKey($styles.scale),
      child: Theme(
        data: $styles.colors.toThemeData(),
        // Provide a default texts style to allow Hero's to render text properly
        child: DefaultTextStyle(
          style: $styles.text.body,
          // Use a custom scroll behavior across entire app
          child: ScrollConfiguration(
            behavior: AppScrollBehavior(),
            child: child,
          ),
        ),
      ),
    );
  }
}
