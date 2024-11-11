import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_app/core/constants/colors.dart';
import 'package:tv_app/ui/screens/root_screen/root_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    splashScreenDelay();
  }

  splashScreenDelay() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(RootScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarColor,
      body: Center(
        child: Image.asset(
          "assets/icons_assets/logo.png",
          fit: BoxFit.cover,
          scale: 3,
        ),
      ),
    );
  }
}
