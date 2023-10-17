import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
