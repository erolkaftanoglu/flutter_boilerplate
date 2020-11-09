// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../ui/views/home/home_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/startup/startup_view.dart';
import '../ui/views/unknown/unknown_view.dart';
import 'router_guard.dart';

class Routes {
  static const String startupView = '/';
  static const String homeView = '/home-view';
  static const String loginView = '/login-view';
  static const String unknownRouteScreen = '*';
  static const all = <String>{
    startupView,
    homeView,
    loginView,
    unknownRouteScreen,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView, guards: [AuthGuard]),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.unknownRouteScreen, page: UnknownRouteScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartupView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => StartupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoginView(),
        settings: data,
      );
    },
    UnknownRouteScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => UnknownRouteScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushStartupView() => push<dynamic>(Routes.startupView);

  Future<dynamic> pushHomeView() => push<dynamic>(Routes.homeView);

  Future<dynamic> pushLoginView() => push<dynamic>(Routes.loginView);

  Future<dynamic> pushUnknownRouteScreen() =>
      push<dynamic>(Routes.unknownRouteScreen);
}
