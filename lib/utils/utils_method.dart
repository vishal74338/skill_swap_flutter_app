import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// *********************************** Responsive Font / Size *******************************
double getFontSize(double px) {
  Size size = Get.size;
  // Size size = WidgetsBinding.instance.platformDispatcher.views.first.physicalSize;
  num statusBar = Get.statusBarHeight;
  // num statusBar = WidgetsBinding.instance.platformDispatcher.views.first.viewPadding.top;
  num screenHeight = size.height - statusBar;
  final height = px * (screenHeight / 812);
  final width = px * (size.width / 375);
  // debugPrint("getFontSize : $width * $height");
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}
