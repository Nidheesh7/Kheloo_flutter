import 'package:flutter/material.dart';
import 'package:kheloo/features/app_config.dart';
import 'package:kheloo/features/routes.dart';
import 'package:kheloo/features/splash_screen.dart';

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
      ),
      themeMode: ThemeMode.light,
      initialRoute: SplashSceen.route,
      routes: appRoutes(),
      key: AppConfig.navigatorKey,
      debugShowCheckedModeBanner: false,
    );
  }
}
