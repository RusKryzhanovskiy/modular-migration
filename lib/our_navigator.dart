import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:go_router/go_router.dart';
import 'package:modular_migration/navigators.dart';

/// NAVIGATOR
class OurNavigator {
  static Future<void> pushNamed(String name) async {
    try {
      final result = await modularRouter.pushNamed(name);
      if (kDebugMode) {
        print('Modular navigation');
      }
    } catch (error) {
      try {
        final result = await goRouter.pushNamed(name);
        if (kDebugMode) {
          print('GoRouter navigation');
        }
      } catch (error) {
        if (kDebugMode) {
          print('No navigation');
        }
      }
    }
  }
}

class OurRouterConfig extends RouterConfig<RouteMatchList> {
  OurRouterConfig()
      : super(
          routerDelegate: OurRouterDelegate(),
          routeInformationParser: OurRouteInformationParser(),
          routeInformationProvider: OurRouteInformationProvider(),
        );
}

class OurRouterDelegate extends RouterDelegate<RouteMatchList> {
  @override
  RouteMatchList get currentConfiguration {
    print('currentConfiguration');
    return goRouter.routerDelegate.currentConfiguration;
  }

  @override
  void addListener(VoidCallback listener) {
    print('addListener');
    return Modular.routerDelegate.addListener(listener);
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return goRouter.routerDelegate.build(context);
  }

  @override
  Future<bool> popRoute() {
    print('popRoute');
    return Modular.routerDelegate.popRoute();
  }

  @override
  void removeListener(VoidCallback listener) {
    print('removeListener');
    return Modular.routerDelegate.removeListener(listener);
  }

  @override
  Future<void> setNewRoutePath(configuration) {
    print('setNewRoutePath');
    return goRouter.routerDelegate.setNewRoutePath(configuration);
  }
}

class OurRouteInformationParser extends RouteInformationParser<RouteMatchList> {
  @override
  Future<RouteMatchList> parseRouteInformationWithDependencies(
    RouteInformation routeInformation,
    BuildContext context,
  ) {
    return goRouter.routeInformationParser
        .parseRouteInformationWithDependencies(routeInformation, context);
  }
}

class OurRouteInformationProvider extends RouteInformationProvider {
  @override
  void addListener(VoidCallback listener) {}

  @override
  void removeListener(VoidCallback listener) {}

  @override
  RouteInformation get value => goRouter.routeInformationProvider.value;
}
