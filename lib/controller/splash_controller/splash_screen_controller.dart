import 'package:get/get.dart';

import '../../resourses/table_keys_values.dart';
import '../../router/routs_names.dart';
import '../../utils/get_storage_manager.dart';

class SplashScreenController extends GetxController with GetSingleTickerProviderStateMixin{
static SplashScreenController get find=>Get.find();

RxBool animate=false.obs;

Future startAnimation() async {
  await Future.delayed(
    const Duration(milliseconds: 500),
  );
  animate.value = true;
  await Future.delayed(
    const Duration(seconds: 2),
  );
  // Get.toNamed(RoutsNames.home);
  // Get.toNamed(RoutsNames.welcomeScreen);
  var isLogin = GetStorageManager.getValue(prefIsLogin, false);

  if (isLogin) {
    // PaymentUtils().setUpStripeKey();
    Get.offNamed(RoutsNames.mainScreen);
  }
  else {
    // print("Hello");
    Get.offNamed(RoutsNames.login);
  }
}


}