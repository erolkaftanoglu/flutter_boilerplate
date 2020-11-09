import 'package:auto_route/auto_route_annotations.dart';
import 'package:my_app/ui/views/home/home_view.dart';
import 'package:my_app/ui/views/login/login_view.dart';
import 'package:my_app/ui/views/startup/startup_view.dart';
import 'package:my_app/ui/views/unknown/unknown_view.dart';

import 'router_guard.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    AdaptiveRoute(page: StartupView, initial: true),
    AdaptiveRoute(page: HomeView, guards: [AuthGuard]),
    AdaptiveRoute(page: LoginView),
    AdaptiveRoute(path: '*', page: UnknownRouteScreen)
  ],
)
class $AppRouter {}
