import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reverie/core/navigation/route_builder.dart';
import 'package:reverie/core/theme/app_palette.dart';
import 'package:reverie/core/widgets/button.dart';
import 'package:reverie/features/auth/presentation/pages/signin_page.dart';
import 'package:reverie/features/auth/presentation/widgets/auth_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();

  // Field controllers
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // Variables
  bool isPassObscure = true;
  bool isConfirmPassObscure = true;

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsGeometry.all(24),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create an account', style: GoogleFonts.playfairDisplay(
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
          
              // Email form field
              Text('Email', style: GoogleFonts.dmSans(
                color: AppPalette.textColor,
                fontSize: 12,
              )),
              SizedBox(height: 4),
              AuthField(
                placeholder: 'example@domain.com',
                suffixIcon: const Icon(Icons.email, color: AppPalette.purpleColor, size: 16),
                controller: emailController,
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
                obscureText: isPassObscure,
                controller: passwordController,
                suffixIcon: IconButton(
                  icon: Icon(
                    isPassObscure ? Icons.visibility : Icons.visibility_off,
                    color: AppPalette.purpleColor,
                    size: 16,
                  ),
                  onPressed: () {
                    setState(() {
                      isPassObscure = !isPassObscure;
                    });
                  },
                ),
              ),
          
              SizedBox(height: 24),
          
              // Confirm password form field
              Text('Confirm password', style: GoogleFonts.dmSans(
                color: AppPalette.textColor,
                fontSize: 12,
              )),
              SizedBox(height: 4),
              AuthField(
                placeholder: 'Retype your password',
                obscureText: isConfirmPassObscure,
                controller: confirmPasswordController,
                suffixIcon: IconButton(
                  icon: Icon(
                    isConfirmPassObscure ? Icons.visibility : Icons.visibility_off,
                    color: AppPalette.purpleColor,
                    size: 16,
                  ),
                  onPressed: () {
                    setState(() {
                      isConfirmPassObscure = !isConfirmPassObscure;
                    });
                  },
                ),
              ),
          
              SizedBox(height: 40),
                            // Button
              Button(buttonText: 'Create account'),
              SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    route_animate(SignInPage())
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account?',
                    style: GoogleFonts.dmSans(
                      color: AppPalette.textColor,
                      fontSize: 12,
                    ),
                    children: [
                      TextSpan(
                        text: ' Sign in',
                        style: GoogleFonts.dmSans(
                          color: AppPalette.primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        )
                      )
                    ]
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}