import 'package:flutter/material.dart';

import 'color_code.dart';
import 'custom_style.dart';

class CustomTextFormField2 extends StatefulWidget {
  final double? width;
  final double? height;
  final double? radius;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final String? labelText;
  final String? hintText;
  final Color? borderColor;
  final Color? bgColor;
  final Color? focusBorderColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FormFieldValidator? validator;
  final TextEditingController controller;
  final GestureTapCallback? onTap;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final bool obscureText;
  final bool? readOnly;
  final EdgeInsetsGeometry? outerPadding;
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign? textAlign;
  final ValueChanged<String>? onChanged;
  final FocusNode? focusNode;

  const CustomTextFormField2({
    super.key,
    this.style,
    this.labelStyle,
    this.labelText,
    this.validator,
    required this.controller,
    this.onTap,
    this.hintText,
    this.hintStyle,
    this.borderColor,
    this.suffixIcon,
    this.focusBorderColor,
    this.keyboardType,
    this.minLines,
    this.maxLines = 1,
    this.maxLength,
    this.obscureText = false,
    this.outerPadding,
    this.radius,
    this.contentPadding,
    this.textAlign,
    this.onChanged,
    this.prefixIcon,
    this.bgColor,
    this.readOnly,
    this.focusNode, this.width, this.height,
  });

  @override
  State<CustomTextFormField2> createState() => _CustomTextFormField2State();
}

class _CustomTextFormField2State extends State<CustomTextFormField2> {
  late FocusNode _focusNode;
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _hasFocus = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null) Text(widget.labelText!, style: widget.labelStyle ?? CustomStyle.hintTextStyle),
        Padding(
          padding: widget.outerPadding ?? const EdgeInsets.symmetric(vertical: 8),
          child: SizedBox(
            height: widget.height,
            width: widget.width,
            child: TextFormField(
              controller: widget.controller,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: widget.style ?? CustomStyle.editTextTitle,
              cursorColor: widget.focusBorderColor,
              obscureText: widget.obscureText,
              focusNode: _focusNode,
              obscuringCharacter: '*',
              keyboardType: widget.keyboardType,
              minLines: widget.minLines,
              maxLines: widget.maxLines,
              maxLength: widget.maxLength,
              readOnly: widget.readOnly ?? false,
              textAlign: widget.textAlign ?? TextAlign.start,
              onChanged: widget.onChanged,
              decoration: InputDecoration(
                  counterText: "",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: widget.contentPadding ?? const EdgeInsets.only(left: 20,top: 15,bottom: 15,right: 20),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: widget.focusBorderColor ?? ColorCode.mainColor,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(widget.radius ?? 30.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: widget.borderColor ?? ColorCode.textFieldBgColor,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(widget.radius ?? 30.0)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(widget.radius ?? 30.0)),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(widget.radius ?? 30.0)),
                  ),
                  errorStyle: const TextStyle(color: Colors.red),
                  hintText: _hasFocus ? "" : widget.hintText,
                  hintStyle: widget.hintStyle ?? CustomStyle.hintTextStyle,
                  fillColor: widget.bgColor ?? ColorCode.textFieldBgColor,
                  filled: true,
                  prefixIcon: widget.prefixIcon,
                  suffixIcon: widget.suffixIcon,
                  suffixStyle: widget.hintStyle),
              validator: widget.validator,
              onTap: widget.onTap,
            ),
          ),
        ),
      ],
    );
  }
}
