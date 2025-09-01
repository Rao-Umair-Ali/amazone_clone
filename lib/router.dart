import 'package:amazone_clone/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return (MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      ));
    default:
      return (MaterialPageRoute(
        builder: (_) => Scaffold(body: Text("404 page not found")),
      ));
  }
}
