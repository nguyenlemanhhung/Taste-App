import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taste_app/components/header_page_auth.dart';
import 'package:taste_app/constants/colors.dart';
import 'package:taste_app/screen/sign_in/components/social_auth.dart';
import 'package:taste_app/screen/sign_in/sign_in_screen.dart';
import 'package:taste_app/screen/sign_up/components/sign_up_form.dart';

import '../../components/custom_button_full.dart';
import '../../constants/fonts.dart';

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
              SignUpForm(),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'By clicking "Sign Up" you agree with the ',
                      style: PrimaryFont.regular400(12).copyWith(
                        color: textGray1,
                      ),
                    ),
                    TextSpan(
                      text: 'terms of services',
                      style: PrimaryFont.regular400(12).copyWith(
                        color: textBlue1,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: PrimaryFont.regular400(12).copyWith(
                        color: textGray1,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: PrimaryFont.regular400(12).copyWith(
                        color: textBlue1,
                      ),
                    ),
                  ],
                ),
              ),
              CustomButtonFull(
                text: 'Sign Up',
                press: () {},
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
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Already have account?',
                      style: PrimaryFont.regular400(14).copyWith(
                        color: textBlack2,
                      ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                      text: 'Sign In',
                      style: PrimaryFont.regular400(14).copyWith(
                        color: textBlue1,
                      ),
                    ),
                  ],
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       'Already have account?',
              //       style: PrimaryFont.regular400(14).copyWith(
              //         color: textBlack2,
              //       ),
              //     ),
              //     TextButton(
              //       onPressed: () {
              //         Navigator.pushNamed(context, SignInScreen.routeName);
              //       },
              //       child: Text(
              //         'Sign In',
              //         style: PrimaryFont.regular400(14).copyWith(
              //           color: textBlue1,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
