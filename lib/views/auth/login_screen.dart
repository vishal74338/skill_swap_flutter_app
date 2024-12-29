import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_swap_flutter_app/controller/auth_controller/login_controller.dart';
import 'package:skill_swap_flutter_app/resourses/color_code.dart';
import 'package:skill_swap_flutter_app/resourses/custom_button.dart';
import 'package:skill_swap_flutter_app/resourses/custom_style.dart';
import 'package:skill_swap_flutter_app/resourses/custom_text_form_field2.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Container(
          color: ColorCode.white,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Login here",
                  style: CustomStyle.loginText,
                ),
                Text(
                  "Welcome back you’ve been missed!",
                  style: CustomStyle.welcomeText,
                  textAlign: TextAlign.center,
                ),
                CustomTextFormField2(
                  width: Get.width,
                  controller: controller.passController,
                  hintText: "Password",
                  radius: 20,
                  bgColor: ColorCode.txtField,
                  // borderColor: ColorCode.txtField,
                ),
                CustomTextFormField2(
                  width: Get.width,
                  controller: controller.emailController,
                  hintText: "Email",
                  radius: 20,
                  bgColor: ColorCode.txtField,
                  // borderColor: ColorCode.txtField,
                ),
                Text(
                  "Forgot your password?",
                  style: CustomStyle.forgotTextStyle,
                ),
                const CustomButtonNew(
                  text: "text",
                  elevation: 4.0,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                Text(
                  "Create new account",
                  style: CustomStyle.createNewText,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "createNew",
                  style: CustomStyle.createNewText
                      .copyWith(color: ColorCode.mainColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )),
    );
  }
}
