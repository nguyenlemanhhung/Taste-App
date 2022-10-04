import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taste_app/constants/colors.dart';
import 'package:taste_app/constants/fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber[100],
                      // image: DecorationImage(
                      //   image: AssetImage(''),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  Text(
                    'Cute Dog',
                    style: PrimaryFont.medium500(14).copyWith(
                      color: textblack3,
                    ),
                  ),
                  Text(
                    'q****@****.com',
                    style: PrimaryFont.regular400(12).copyWith(
                      color: textGray3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
