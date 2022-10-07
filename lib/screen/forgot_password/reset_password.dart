import 'package:flutter/material.dart';

import 'package:taste_app/components/custom_button_full.dart';
import 'package:taste_app/components/header_page_auth.dart';
import 'package:taste_app/screen/sign_in/sign_in_screen.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});
  static String routeName = '/reset_password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    HeaderPageAuth(
                      title: 'Reset Password',
                      subTitle: 'Enter a new password',
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Type your new password',
                          style: PrimaryFont.medium500(14).copyWith(
                            color: textGray2,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              hintText: 'Type your new password',
                              hintStyle: PrimaryFont.regular400(14).copyWith(
                                color: textHint,
                              )),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Confirm new password',
                          style: PrimaryFont.medium500(14).copyWith(
                            color: textGray2,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              hintText: 'Re-enter your new password',
                              hintStyle: PrimaryFont.regular400(14).copyWith(
                                color: textHint,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomButtonFull(
                text: 'Save',
                press: () {
                  Navigator.pushNamed(context, SignInScreen.routeName);
                },
                textBtnSize: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
