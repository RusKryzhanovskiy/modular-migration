import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_migration/go_router_app/go_router.dart';

class GoRouterProductsPage extends StatelessWidget {
  const GoRouterProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Modular.to.pop();
          },
          child: Placeholder(),
        ),
        title: const Text('Продукти (go)'),
      ),
      body: ListView(
        children: [
          const Text('You dont have products coz u poor'),
          CupertinoButton(
            child: const Text('go router CorpCards'),
            onPressed: () {
              goRouter.pushNamed('/corp-cards');
            },
          ),
        ],
      ),
    );
  }
}

class GoRouterCorpCardsPage extends StatelessWidget {
  const GoRouterCorpCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CorpCards (go)'),
      ),
      body: ListView(
        children: const [Text('You dont have payments coz u poor')],
      ),
    );
  }
}
