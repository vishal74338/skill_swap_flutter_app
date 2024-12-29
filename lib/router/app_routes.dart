import 'package:get/get.dart';
import 'package:skill_swap_flutter_app/controller/controller_binding.dart';
import 'package:skill_swap_flutter_app/router/routs_names.dart';
import 'package:skill_swap_flutter_app/views/auth/login_screen.dart';
import 'package:skill_swap_flutter_app/views/splash_screen/splash_screen.dart';

class AppRoutes {
static const initial=RoutsNames.launcher;

static final routes=[
  GetPage(
      name: RoutsNames.launcher,
      page: ()=> const SplashScreen(),
    bindings: [SplashControllerBinding()]
  ),
  GetPage(
    page: () => const LoginScreen(),
    bindings: [LoginControllerBinding()],
    name: RoutsNames.login,
  ),
];

}