import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reverie/core/theme/app_palette.dart';
import 'package:reverie/core/widgets/button.dart';
import 'package:reverie/features/auth/presentation/widgets/auth_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Sign in to your account', style: GoogleFonts.playfairDisplay(
              fontSize: 24,
              color: AppPalette.primaryColor,
              fontWeight: FontWeight.bold
            )),
            const SizedBox(height: 40),

            // Username form field
            Text('Username', style: GoogleFonts.dmSans(
              color: AppPalette.textColor,
              fontSize: 12,
            )),
            SizedBox(height: 4),
            AuthField(placeholder: 'Your username', suffixIcon: Icons.person),

            SizedBox(height: 24),

            // Password form field
            Text('Password', style: GoogleFonts.dmSans(
              color: AppPalette.textColor,
              fontSize: 12,
            )),
            SizedBox(height: 4),
            AuthField(placeholder: 'Your password', suffixIcon: Icons.visibility_off),

            SizedBox(height: 40),

            // Button
            Button(buttonText: 'Sign in'),
            SizedBox(height: 24),
            RichText(
              text: TextSpan(
                text: 'Don\'t have an account yet?',
                style: GoogleFonts.dmSans(
                  color: AppPalette.textColor,
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: ' Create an account',
                    style: GoogleFonts.dmSans(
                      color: AppPalette.primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    )
                  )
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}