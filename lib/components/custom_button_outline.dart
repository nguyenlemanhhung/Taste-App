import 'package:flutter/material.dart';
import 'package:taste_app/constants/colors.dart';

import '../constants/fonts.dart';

class CustomButtonOutline extends StatelessWidget {
  const CustomButtonOutline(
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
      child: OutlinedButton(
        onPressed: press,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Text(
          text,
          style: PrimaryFont.bold600(textBtnSize).copyWith(
            color: mainOrange,
          ),
        ),
      ),
      // child: MaterialButton(
      //   elevation: 0,
      //   padding: EdgeInsets.all(20),
      //   // color: mainOrange,
      //   child: Text(
      //     text,
      //     style: PrimaryFont.bold600(textBtnSize).copyWith(
      //       color: backgroundWhite,
      //     ),
      //   ),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(10)

      //   ),
      //   onPressed: press,
      // ),
    );
  }
}
