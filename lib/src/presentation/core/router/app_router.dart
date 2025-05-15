import 'package:flutter/material.dart';

class AppNavigator {
  static Future<T?> push<T extends Object?>(
    BuildContext context,
    Widget page,
  ) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) => page,
        settings: RouteSettings(name: page.runtimeType.toString()),
        maintainState: true,
      ),
    );
  }

  static void pop<T extends Object?>(BuildContext context, [T? result]) {
    Navigator.of(context).pop<T>(result);
  }

  static Future<T?> pushAndRemoveUntil<T extends Object?>(
    BuildContext context,
    Widget page, {
    required bool Function(Route<dynamic>) predicate,
  }) {
    return Navigator.of(context).pushAndRemoveUntil<T>(
      MaterialPageRoute(
        builder: (context) => page,
        settings: RouteSettings(name: page.runtimeType.toString()),
        maintainState: true,
      ),
      predicate,
    );
  }
}
