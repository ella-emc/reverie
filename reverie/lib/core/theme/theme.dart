import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reverie/core/theme/app_palette.dart';

class AppTheme {
  static final _border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide.none
  );

  static final lightThemeMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Color.from(alpha: 255, red: 255, green: 255, blue: 255),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.fromLTRB(24, 12, 24, 12),
      fillColor: AppPalette.backgroundColor,
      filled: true,
      enabledBorder: _border,
      focusedBorder: _border,
      hintStyle: GoogleFonts.dmSans(
        color: Color.fromRGBO(0, 0, 0, 0.4),
        fontSize: 12
      ),
    )
  );
}