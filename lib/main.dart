import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_migration/modular_app/app_module.dart';
import 'package:modular_migration/modular_app/modular_application.dart';

void main() {
  return runApp(
    ModularApp(
      module: AppModule(),
      child: const ModularApplication(),
    ),
  );
}
