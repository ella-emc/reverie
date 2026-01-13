import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reverie/core/theme/app_palette.dart';
import 'package:reverie/core/widgets/button.dart';
import 'package:reverie/features/auth/presentation/widgets/auth_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignInPage> {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(24),
        child: Form(
          key: formKey,
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
              AuthField(
                placeholder: 'Your username',
                suffixIcon: const Icon(Icons.person, color: AppPalette.purpleColor, size: 16),
                controller: usernameController,
              ),
          
              SizedBox(height: 24),
          
              // Password form field
              Text('Password', style: GoogleFonts.dmSans(
                color: AppPalette.textColor,
                fontSize: 12,
              )),
              SizedBox(height: 4),
              AuthField(
                placeholder: 'Your password',
                obscureText: isObscure,
                controller: passwordController,
                suffixIcon: IconButton(
                  icon: Icon(
                    isObscure ? Icons.visibility_off : Icons.visibility,
                    color: AppPalette.purpleColor,
                    size: 16,
                  ),
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                ),
              ),
          
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
      ),
    );
  }
}