import 'package:flutter/material.dart';
import 'package:taste_app/constants/colors.dart';

class SocialAuth extends StatelessWidget {
  const SocialAuth({Key? key, required this.press, required this.socialImage})
      : super(key: key);
  final VoidCallback press;
  final String socialImage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundGray,
        ),
        child: Image.asset(
          socialImage,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
