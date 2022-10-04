import 'package:flutter/material.dart';
import 'package:taste_app/screen/splash_screen/components/onboarding_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBody(),
    );
  }
}
