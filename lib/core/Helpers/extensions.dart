import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacmentName(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate routePredicate}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
        routeName, arguments: arguments, routePredicate);
  }

  void pop() {
    Navigator.of(this).pop();
  }
}
