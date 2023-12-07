import 'package:flutter/material.dart';
import 'package:selamat/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {required this.controller,
      required this.textInputType,
      required this.textInputAction,
      required this.hint,
      this.isObscure = false,
      this.hasSuffix = false,
      this.onPressed,
      super.key});

  final TextEditingController controller;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String hint;
  final bool isObscure;
  final bool hasSuffix;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyles.body,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      obscureText: isObscure,
      decoration: InputDecoration(
          suffixIcon: hasSuffix
              ? IconButton(
                  onPressed: onPressed,
                  icon:
                      Icon(isObscure ? Icons.visibility : Icons.visibility_off))
              : null,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1.0, color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0)),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1.0, color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          hintText: hint,
          hintStyle: TextStyles.body),
    );
  }
}
