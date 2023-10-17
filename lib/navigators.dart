import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:go_router/go_router.dart';
import 'package:modular_migration/home_page.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
    r.child('/shop', child: (context) => const ShopPage());
  }
}

final IModularNavigator modularRouter = Modular.to;

final GoRouter goRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/shop_go_router',
      name: '/shop_go_router',
      builder: (BuildContext context, GoRouterState state) {
        return const ShopV2GoRouterPage();
      },
    ),
  ],
);
