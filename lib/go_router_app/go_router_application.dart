import 'package:flutter/material.dart';
import 'package:modular_migration/go_router_app/go_router.dart';

class GoRouterApplication extends StatelessWidget {
  const GoRouterApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: goRouter,
    );
  }
}
