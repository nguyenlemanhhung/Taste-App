import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taste_app/components/custom_button_full.dart';
import 'package:taste_app/constants/colors.dart';
import 'package:taste_app/constants/fonts.dart';
import 'package:taste_app/screen/main_screen/profile_page/components/tabbar_profile.dart';

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
                      // color: Colors.amber[100],
                      image: DecorationImage(
                        image: AssetImage('/images/cute_dog.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Cute Dog',
                    style: PrimaryFont.medium500(14).copyWith(
                      color: textBlack3,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 23,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundGray,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '100',
                        style: PrimaryFont.bold600(24).copyWith(
                          color: textBlack3,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Active goals',
                        style: PrimaryFont.regular400(12).copyWith(
                          color: textGray3,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 23,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundGray,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '4',
                        style: PrimaryFont.bold600(24).copyWith(
                          color: textBlack3,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Complete goals',
                        style: PrimaryFont.regular400(12).copyWith(
                          color: textGray3,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomButtonFull(
              text: 'Edit profile',
              press: () {},
              textBtnSize: 16,
            ),
            Expanded(
              child: TabBarProfile(),
            ),
          ],
        ),
      ),
    );
  }
}
