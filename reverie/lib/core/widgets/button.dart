import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reverie/core/theme/app_palette.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  const Button({
    super.key,
    required this.buttonText,
    this.buttonColor = AppPalette.purpleColor,
    this.buttonTextColor = AppPalette.backgroundColor
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(buttonColor),
          padding: WidgetStateProperty.all(EdgeInsets.fromLTRB(24, 12, 24, 12)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16)
          ))
        ),
        child: Text(
          buttonText,
          style: GoogleFonts.dmSans(
            color: buttonTextColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}