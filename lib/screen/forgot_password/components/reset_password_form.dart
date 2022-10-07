import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
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
                  ),
                ),
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
