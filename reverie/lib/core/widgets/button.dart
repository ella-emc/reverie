import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reverie/core/theme/app_palette.dart';

class Button extends StatelessWidget {
  final String buttonText;
  const Button({
    super.key,
    required this.buttonText
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppPalette.purpleColor),
          padding: WidgetStateProperty.all(EdgeInsets.fromLTRB(24, 12, 24, 12)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16)
          ))
        ),
        child: Text(
          buttonText,
          style: GoogleFonts.dmSans(
            color: AppPalette.backgroundColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}