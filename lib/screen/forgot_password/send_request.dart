import 'package:flutter/material.dart';

import 'package:taste_app/components/custom_button_full.dart';
import 'package:taste_app/components/header_page_auth.dart';
import 'package:taste_app/screen/forgot_password/components/send_request_form.dart';
import 'package:taste_app/screen/forgot_password/reset_password.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../sign_in/components/sign_in_form.dart';

class SendRequest extends StatelessWidget {
  const SendRequest({super.key});
  static String routeName = '/forgot_password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              HeaderPageAuth(
                title: 'Forgot Password',
                subTitle:
                    'Enter the email address associated with your account and we\'ll send an email width instructions to reset your password.',
              ),
              SendRequestForm(),
              CustomButtonFull(
                text: 'Send request',
                press: () {
                  Navigator.pushNamed(context, ResetPassword.routeName);
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
