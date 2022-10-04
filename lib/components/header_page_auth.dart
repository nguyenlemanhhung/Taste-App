import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taste_app/constants/colors.dart';
import 'package:taste_app/constants/fonts.dart';

class HeaderPageAuth extends StatelessWidget {
  const HeaderPageAuth(
      {super.key, required this.title, required this.subTitle});
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              '/images/logo.png',
              width: 60.0,
              height: 70.0,
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: PrimaryFont.bold600(24).copyWith(
                    color: textblack1,
                  ),
                ),
                Text(
                  subTitle,
                  style: PrimaryFont.regular400(14).copyWith(
                    color: textblack1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
