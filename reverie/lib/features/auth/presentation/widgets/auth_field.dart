import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reverie/core/theme/app_palette.dart';

class AuthField extends StatelessWidget {
  final String placeholder;
  final IconData? suffixIcon;
  static var _isVisible = false;
  const AuthField({
    super.key,
    required this.placeholder,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.dmSans(
        fontSize: 12,
        color: AppPalette.textColor
      ),
      decoration: InputDecoration(
        hintText: placeholder,
        suffixIcon: suffixIcon != null
          ? Icon(
              suffixIcon,
              color: AppPalette.purpleColor,
              size: 16,
            )
          : null,
      ),
    );
  }
}