import 'package:flutter/material.dart';
import 'package:kheloo/features/app_config.dart';
import 'package:kheloo/features/routes.dart';
import 'package:kheloo/features/setup/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          subtitle1: TextStyle(color: Colors.white),
        ),
      ),

      themeMode: ThemeMode.light,
      // initialRoute: SplashSceen.route,
      initialRoute: LoginScreen.route,
      routes: appRoutes(),
      key: AppConfig.navigatorKey,
      debugShowCheckedModeBanner: false,
    );
  }
}
