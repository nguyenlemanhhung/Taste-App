import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';

class SendRequestForm extends StatefulWidget {
  const SendRequestForm({super.key});

  @override
  State<SendRequestForm> createState() => _SendRequestFormState();
}

class _SendRequestFormState extends State<SendRequestForm> {
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
        ],
      ),
    );
  }
}
