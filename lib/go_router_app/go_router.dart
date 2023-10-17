import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modular_migration/go_router_app/go_router_pages.dart';

final GoRouter goRouter = GoRouter(
  initialLocation: '/products',
  routes: <RouteBase>[
    GoRoute(
      path: '/products',
      name: '/products',
      builder: (BuildContext context, GoRouterState state) {
        return const GoRouterProductsPage();
      },
    ),
    GoRoute(
      path: '/corp-cards',
      name: '/corp-cards',
      builder: (BuildContext context, GoRouterState state) {
        return const GoRouterCorpCardsPage();
      },
    ),
  ],
);
