import 'package:flutter/material.dart';
import 'package:reverie/core/theme/theme.dart';
import 'package:reverie/features/auth/presentation/pages/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reverie',
      theme: AppTheme.lightThemeMode,
      home: const SignInPage(),
    );
  }
}