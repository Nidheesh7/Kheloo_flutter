import 'package:flutter/material.dart';
import 'package:kheloo/features/home/home_screen.dart';
import 'package:kheloo/features/setup/forgot_password_screen.dart';
import 'package:kheloo/features/setup/login_screen.dart';
import 'package:kheloo/features/splash_screen.dart';

Map<String, Widget Function(BuildContext context)> appRoutes() => {
      HomeScreen.route: (_) => const HomeScreen(),
      SplashSceen.route: (_) => const SplashSceen(),
      LoginScreen.route: (_) => const LoginScreen(),
      ForgotPasswordScreen.route: (_) => const ForgotPasswordScreen(),
    };

RouteFactory onAppGenerateRoute() => (settings) {
      Widget? screen = _getScreen(settings);
      if (screen != null) {
        return MaterialPageRoute(
            builder: (context) {
              return screen;
            },
            settings: settings);
      }

      return null;
    };

Widget? _getScreen(RouteSettings settings) {
  switch (settings.name) {

    ///We can pass the arguments like this

    // case HomeScreen.route:
    //   final params = settings.arguments as HomeScreen;
    //   return HomeScreen(params: params);

    default:
      return null;
  }
}
