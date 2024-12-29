import 'package:flutter/material.dart';

import '../utils/utils_method.dart';
import 'color_code.dart';

class CustomStyle {

  static var loginText = const TextStyle(
      color: ColorCode.login,
      fontSize: 30,
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins-SemiBold'
  );
  static var welcomeText = const TextStyle(
    color: ColorCode.black,
    fontSize: 20,
    fontWeight: FontWeight.w600,
      fontFamily: 'Poppins-SemiBold'
  );
  static var createNewText = const TextStyle(
      color: ColorCode.createNew,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins-SemiBold'
  );
  static var buttonText = const TextStyle(
      color: ColorCode.white,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins-SemiBold'
  );
  static var editTextTitle = TextStyle(
    color: ColorCode.titleText,
    fontSize: getFontSize(18),
    fontWeight: FontWeight.w500,
    fontFamily: 'Inter',
  );
  static var hintTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: 'Inter',
    color: ColorCode.hintColor,
  );
  static var forgotTextStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins-SemiBold',
    color: ColorCode.mainColor,
  );
}