import 'package:get/get.dart';
import 'package:skill_swap_flutter_app/controller/auth_controller/login_controller.dart';

import 'splash_controller/splash_screen_controller.dart';

class SplashControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(() => SplashScreenController());
  }
}

class LoginControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}