import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taste_app/screen/main_screen/home_page/components/tab_bar_home.dart';

import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: PrimaryFont.regular400(14).copyWith(
                      color: textHint,
                    ),
                    suffixIcon: Image.asset(
                      '/icons/search.png',
                      height: 16,
                      width: 15,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore Foodlist Ideas',
                    style: PrimaryFont.bold600(18).copyWith(
                      color: textBlack1,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Click on your prefered category to see related goal ideas!',
                    style: PrimaryFont.regular400(14).copyWith(
                      color: textBlack1,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TabBarHome(),
          ],
        ),
      ),
    );
  }
}
