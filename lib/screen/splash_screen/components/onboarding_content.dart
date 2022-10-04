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
        Image.asset(image),
        Column(
          children: <Widget>[
            Text(
              title,
              style: PrimaryFont.bold600(24).copyWith(
                color: textblack1,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              subTitle,
              style: PrimaryFont.regular400(16).copyWith(
                color: textblack1,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
