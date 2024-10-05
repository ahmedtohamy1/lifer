import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> push(Widget page, {Object? arguments}) {
    return Navigator.of(this).push(
      MaterialPageRoute(
        builder: (context) => page,
        settings: RouteSettings(arguments: arguments),
      ),
    );
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacement(Widget page, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  Future<dynamic> pushAndRemoveUntil(Widget page,
      {required RoutePredicate predicate}) {
    return Navigator.of(this).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => page), predicate);
  }

  void pop() => Navigator.of(this).pop();
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}
