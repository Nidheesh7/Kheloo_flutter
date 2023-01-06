import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kheloo/features/home/home_screen.dart';
import 'package:kheloo/features/widgets/loader_widget.dart';


class SplashSceen extends StatefulWidget {
  static const String route = "/splash_screen";
  const SplashSceen({Key? key}) : super(key: key);

  @override
  State<SplashSceen> createState() => _SplashSceenState();
}

class _SplashSceenState extends State<SplashSceen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    Future.microtask(() => _moveToHomeScreen());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: LoaderWidget()),
    );
  }

  void _moveToHomeScreen() async {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushNamedAndRemoveUntil(
            context, HomeScreen.route, (route) => false));
  }
}
