import 'package:flutter/material.dart';
import 'package:your_psychiatrist/core/theming/colors.dart';
import 'package:flutter/services.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? errorText; // Add errorText property
  final EdgeInsetsGeometry? contentPadding;
  final List<TextInputFormatter>? inputFormatters;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;

  final Widget? prefixIcon;
  final String? Function(String?)? validator;

  const AppTextFormField({
    Key? key,
    this.controller,
    this.errorText,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.prefixIcon,
    required this.hintText,
    this.validator,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          style: inputTextStyle,
          decoration: InputDecoration(
            focusedBorder: focusedBorder ??
                UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
            enabledBorder: enabledBorder ??
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(255, 255, 255, 0.47),
                  ),
                ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle:
                hintStyle ?? TextStyle(color: ColorsManager.formTextColor),
          ),
          obscureText: isObscureText ?? false,
          validator: validator,
          inputFormatters: inputFormatters,
        ),
      ],
    );
  }
}
