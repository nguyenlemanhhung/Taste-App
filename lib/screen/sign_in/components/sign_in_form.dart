import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:taste_app/components/custom_button.dart';

import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
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
          const SizedBox(
            height: 15,
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
                  hintText: 'Enter you password',
                  hintStyle: PrimaryFont.regular400(14).copyWith(
                    color: textHint,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FlutterSwitch(
                        activeColor: mainOrange,
                        width: 40.0,
                        height: 22.0,
                        // valueFontSize: 25.0,
                        toggleSize: 20.0,
                        value: status,
                        borderRadius: 30.0,
                        // padding: 8.0,
                        // showOnOff: true,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Save me',
                        style: PrimaryFont.regular400(14).copyWith(
                          color: textblack2,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    child: Text(
                      'Forgot Password ?',
                      style: PrimaryFont.medium500(14).copyWith(
                        color: textblack2,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                text: 'Sign In',
                press: () {},
                textBtnSize: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
