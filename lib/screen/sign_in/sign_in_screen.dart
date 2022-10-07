import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:taste_app/constants/colors.dart';
import 'package:taste_app/constants/fonts.dart';
import 'package:taste_app/screen/main_screen/main_screen.dart';
import 'package:taste_app/screen/sign_in/components/sign_in_form.dart';
import 'package:taste_app/screen/sign_in/components/social_auth.dart';
import 'package:taste_app/screen/sign_in/components/switch_auth.dart';
import 'package:taste_app/screen/sign_up/sign_up_screen.dart';

import '../../components/custom_button_full.dart';
import '../../components/header_page_auth.dart';
import '../forgot_password/send_request.dart';

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
              HeaderPageAuth(
                title: 'Login',
                subTitle: 'Enter your email and password',
              ),

              SignInForm(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SwitchAuth(),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Save me',
                        style: PrimaryFont.regular400(14).copyWith(
                          color: textBlack2,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    child: Text(
                      'Forgot Password ?',
                      style: PrimaryFont.medium500(14).copyWith(
                        color: textBlack2,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, SendRequest.routeName);
                    },
                  ),
                ],
              ),
              CustomButtonFull(
                text: 'Sign In',
                press: () {
                  Navigator.pushNamed(context, MainScreen.routeName);
                },
                textBtnSize: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialAuth(
                    press: () {},
                    socialImage: '/icons/social/facebook.png',
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  SocialAuth(
                    press: () {},
                    socialImage: '/icons/social/google.png',
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  SocialAuth(
                    press: () {},
                    socialImage: '/icons/social/Shape.png',
                  ),
                ],
              ),
              // SizedBox(
              //   height: 20,
              // ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Don’t have account?',
                      style: PrimaryFont.regular400(14).copyWith(
                        color: textBlack2,
                      ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, SignUpScreen.routeName);
                        },
                      text: 'Sign Up',
                      style: PrimaryFont.regular400(14).copyWith(
                        color: textBlue1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
