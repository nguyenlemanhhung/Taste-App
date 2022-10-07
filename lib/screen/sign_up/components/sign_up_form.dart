import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:taste_app/components/custom_button_full.dart';
import 'package:taste_app/screen/forgot_password/send_request.dart';

import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email',
                style: PrimaryFont.medium500(14).copyWith(
                  color: textGray2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Type your email here...',
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
                'Password',
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
                  hintText: 'Enter your password',
                  hintStyle: PrimaryFont.regular400(14).copyWith(
                    color: textHint,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Confirm Password',
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
                  hintText: 'Re-enter your password',
                  hintStyle: PrimaryFont.regular400(14).copyWith(
                    color: textHint,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
