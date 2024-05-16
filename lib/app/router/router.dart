import 'package:go_router/go_router.dart';
import 'package:predictiva_task/app/core_common_libs.dart' show ResultErrorType;
import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/features/home/presentation/views/home_screen.dart';
import 'package:predictiva_task/features/shared/shared.dart';
import 'package:predictiva_task/ui_components/ui_components.dart';

/// Shared paths / urls used across the app
class ScreenPaths {
  static String error = '/error';
  static String home = '/';
}

/// Routing table, matches string paths to UI Screens, optionally parses params from the paths
///

final appRouter = GoRouter(
  redirect: _handleRedirect,
  routes: [
    ShellRoute(
        builder: (context, router, navigator) {
          return AppScaffold(
            child: OfflineModeViewScreen(
              child: navigator,
            ),
          );
        },
        routes: [
          AppRoute(ScreenPaths.home, (_) => const HomeScreen()),
          AppRoute(
            ScreenPaths.error,
            (s) => ErrorScreen(
              resultErrorType: s.extra as ResultErrorType,
            ),
          ),
        ]),
  ],
);

/// Custom GoRoute sub-class to make the router declaration easier to read
class AppRoute extends GoRoute {
  AppRoute(String path, Widget Function(GoRouterState s) builder,
      {List<GoRoute> routes = const [], this.useFade = false})
      : super(
          path: path,
          routes: routes,
          pageBuilder: (context, state) {
            final pageContent = Scaffold(
              body: builder(state),
              resizeToAvoidBottomInset: false,
            );
            if (useFade) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: pageContent,
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              );
            }
            return MaterialPage(child: pageContent);
          },
        );
  final bool useFade;
}

String? _handleRedirect(BuildContext context, GoRouterState state) {
  if (state.matchedLocation != ScreenPaths.home) {
    return ScreenPaths.home;
  }
  return null; // do nothing
}
