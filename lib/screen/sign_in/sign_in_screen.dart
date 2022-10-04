import 'package:flutter/material.dart';
import 'package:taste_app/screen/sign_in/components/sign_in_form.dart';

import '../../components/header_page_auth.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static String routeName = '/sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: HeaderPageAuth(
                  title: 'Login',
                  subTitle: 'Enter your email and password',
                ),
              ),
              Flexible(
                flex: 5,
                child: SignInForm(),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
