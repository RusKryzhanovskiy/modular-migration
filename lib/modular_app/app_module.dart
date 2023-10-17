import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_migration/go_router_app/go_router_application.dart';
import 'package:modular_migration/modular_app/modular_pages.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const ModularHomePage());
    r.child('/payments', child: (context) => const ModularPaymentsPage());
    r.child('/products', child: (context) => const GoRouterApplication());
  }
}
