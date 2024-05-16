import 'package:flutter/gestures.dart';
import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/app/core_common_libs.dart';

class AppScrollBehavior extends ScrollBehavior {
  @override
  // Add mouse drag on desktop for easier responsive testing
  Set<PointerDeviceKind> get dragDevices {
    final devices = Set<PointerDeviceKind>.from(super.dragDevices);
    devices.add(PointerDeviceKind.mouse);
    return devices;
  }

  // Use bouncing physics on all platforms, better matches the design of the app
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) => const BouncingScrollPhysics();

  @override
  Widget buildScrollbar(BuildContext context, Widget child, ScrollableDetails details) {
    if (PlatformInfo.isMobile) return child;
    return RawScrollbar(
      controller: details.controller,
      thumbVisibility: PlatformInfo.isDesktopOrWeb,
      thickness: 8,
      radius: Radius.circular($styles.corners.sm),
      interactive: true,
      child: child,
    );
  }
}
