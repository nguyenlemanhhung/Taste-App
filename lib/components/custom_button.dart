import 'package:flutter/material.dart';
import 'package:taste_app/constants/colors.dart';

import '../constants/fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.press,
      required this.textBtnSize});
  final String text;
  final double textBtnSize;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        elevation: 0,
        padding: EdgeInsets.all(20),
        color: mainOrange,
        child: Text(
          text,
          style: PrimaryFont.bold600(textBtnSize).copyWith(
            color: backgroundWhite,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        onPressed: press,
      ),
    );
  }
}
