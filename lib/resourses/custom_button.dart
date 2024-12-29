import 'package:flutter/material.dart';

import 'color_code.dart';
import 'custom_style.dart';

class CustomButtonNew extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? width;
  final double? borderWidth;
  final EdgeInsetsGeometry? margin;
  final double? radius;
  final double? height;
  final double? elevation;
  final bool? isSplash;
  final Color? borderColor;
  final Color? backgroundColor;
  final Widget? prefix;
  final Widget? suffix;
  final TextStyle? style;
  final TextAlign? textAlign;
  final EdgeInsets ?padding;


  const  CustomButtonNew({
    super.key,
    required this.text,
    this.onPressed,
    this.width,
    this.height,
    this.style,
    this.borderColor,
    this.backgroundColor,
    this.prefix,
    this.radius,
    this.margin, this.borderWidth, this.textAlign, this.padding, this.isSplash=true, this.suffix, this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 60,
      alignment: Alignment.center,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor ?? ColorCode.mainColor,
        borderRadius: BorderRadius.circular(radius ?? 12),
        boxShadow: elevation != null
            ? [
          BoxShadow(
            color: ColorCode.mainColor.withOpacity(0.2), // Shadow color
            offset: Offset(0, elevation!), // Only bottom elevation
            blurRadius: elevation! * 2, // Blur for smooth shadow
          ),
        ]
            : null,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          splashFactory: isSplash! ? null : NoSplash.splashFactory,
          shadowColor: Colors.transparent,
          padding:EdgeInsets.zero ,
          minimumSize: Size(width ?? double.infinity, height ?? 65),
          shape: RoundedRectangleBorder(
            side: borderColor != null ? BorderSide(color: borderColor ?? const Color(0xFFA8ADB4),width: borderWidth ?? 2) : BorderSide.none,
            borderRadius: BorderRadius.circular(radius ?? 12),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefix != null) prefix!,
            Expanded(
              child: Padding(
                padding:  padding??EdgeInsets.zero,
                child: Text(
                  text,
                  style: style ??CustomStyle.buttonText,
                  textAlign:textAlign?? TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            if (suffix != null) suffix!,
          ],
        ),
      ),
    );
  }
}
