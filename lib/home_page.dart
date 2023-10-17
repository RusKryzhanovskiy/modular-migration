import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modular_migration/our_navigator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: ListView(
        children: [
          CupertinoButton(
            child: const Text('Shop'),
            onPressed: () {
              OurNavigator.pushNamed('/shop');
            },
          ),
          CupertinoButton(
            child: const Text('Shop v2 go router'),
            onPressed: () {
              OurNavigator.pushNamed('/shop_go_router');
            },
          ),
        ],
      ),
    );
  }
}

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shop Page')),
      body: const Center(
        child: Text('This is shop page'),
      ),
    );
  }
}

class ShopV2GoRouterPage extends StatelessWidget {
  const ShopV2GoRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shop v2 GoRouter Page')),
      body: const Center(
        child: Text('This is shop v2 go router page'),
      ),
    );
  }
}
