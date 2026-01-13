import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reverie/core/theme/app_palette.dart';


class AuthField extends StatelessWidget {
  final String placeholder;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final bool obscureText;

  const AuthField({
    super.key,
    required this.placeholder,
    this.suffixIcon,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: GoogleFonts.dmSans(
        fontSize: 12,
        color: AppPalette.textColor
      ),
      decoration: InputDecoration(
        hintText: placeholder,
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText,
      validator: (value) {
        if(value!.isEmpty) {
          return '$placeholder is missing';
        }
        return null;
      },
    );
  }
}