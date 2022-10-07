import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';

class OnbardingContent extends StatelessWidget {
  const OnbardingContent({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);
  final String title, subTitle, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: double.infinity,
          child: Image.asset(image),
        ),
        Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            title,
            style: PrimaryFont.bold600(24).copyWith(
              color: textBlack1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            subTitle,
            style: PrimaryFont.regular400(16).copyWith(
              color: textBlack1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
