import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/locator.dart';
import 'app/router.gr.dart';
import 'app/router_guard.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        builder: ExtendedNavigator.builder<AppRouter>(
          router: AppRouter(),
          initialRoute: '/',
          guards: [AuthGuard()],
          builder: (ctx, extendedNav) => Theme(
            data: ThemeData.light(),
            child: extendedNav,
          ),
          navigatorKey: locator<NavigationService>().navigatorKey,
        ));
  }
}
