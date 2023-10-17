import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ModularApplication extends StatelessWidget {
  const ModularApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      routerConfig: Modular.routerConfig,
    );
  }
}
