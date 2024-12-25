import 'package:bloc_demo/constant/route_constants.dart';
import 'package:bloc_demo/features/auth/splash/splash_screen.dart';
import 'package:bloc_demo/pages/my_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// this is app router class
/// this class is used for named routing
class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return CupertinoPageRoute(
          builder: (context) => SplashScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => MyHomePage(),
        );
    }
  }
}
