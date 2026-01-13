import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reverie/core/theme/app_palette.dart';
import 'package:reverie/core/widgets/button.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image
            Text('Reverie', style: GoogleFonts.playfairDisplay(
              color: AppPalette.purpleColor,
              fontSize: 28,
              fontWeight: FontWeight.bold
            )),
            SizedBox(height: 44),
            Text('The place for your dreams', style: GoogleFonts.playfairDisplay(
              color: AppPalette.textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold
            )),
            SizedBox(height: 10),
            Text(
              'Track your nightly dreams in a journal, look for dream meanings, and interact with an AI-powered chatbot to interpret your dreams.',
              style: GoogleFonts.dmSans(
                color: AppPalette.textColor,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 48),
            Button(buttonText: 'Sign in'),
            SizedBox(height: 20),
            Button(buttonText: 'Create an account')
          ],
        ),
      ),
    );
  }
}