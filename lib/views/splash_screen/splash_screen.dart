import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_swap_flutter_app/controller/splash_controller/splash_screen_controller.dart';

import '../../resourses/color_code.dart';

class SplashScreen extends GetView<SplashScreenController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashScreenController.find.startAnimation();

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
        decoration: const BoxDecoration(color: ColorCode.white),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Image.asset("assets/app_logo/app_logo.png"),
              ),
            )

          ],
        ),

      ),
    );
  }
}
