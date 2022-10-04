import 'package:flutter/material.dart';
import 'package:taste_app/components/header_page_auth.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static String routeName = '/sign_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              HeaderPageAuth(
                title: 'Sign Up to Tastelist ',
                subTitle: 'Hello there, create new account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
