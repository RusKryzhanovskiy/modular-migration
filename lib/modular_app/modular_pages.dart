import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:modular_migration/go_router_app/go_router_application.dart';

class ModularHomePage extends StatelessWidget {
  const ModularHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Головна'),
      ),
      body: ListView(
        children: [
          CupertinoButton(
            child: const Text('modular Платежі'),
            onPressed: () {
              Modular.to.pushNamed('/payments');
            },
          ),
          CupertinoButton(
            child: const Text('go router Продукти'),
            onPressed: () {
              Modular.to.pushNamed('/products');
            },
          ),
          CupertinoButton(
            child: const Text('go router Продукти Modal'),
            onPressed: () {
              showMaterialModalBottomSheet(
                context: context,
                builder: (context) => const GoRouterApplication(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ModularPaymentsPage extends StatelessWidget {
  const ModularPaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Платежі (mod)'),
      ),
      body: ListView(
        children: const [Text('You dont have payments coz u poor')],
      ),
    );
  }
}
