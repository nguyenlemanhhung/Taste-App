import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taste_app/components/custom_button_full.dart';
import 'package:taste_app/components/custom_button_notfull.dart';
import 'package:taste_app/components/custom_button_outline.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/fonts.dart';

class ActiveGoalsCard extends StatelessWidget {
  const ActiveGoalsCard({
    Key? key,
    required this.foodName,
    required this.foodCountry,
    required this.foodImage,
  }) : super(key: key);
  final String foodName, foodCountry, foodImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 220.0,
      width: 140.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundGray,
      ),
      child: Column(
        children: [
          Flexible(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    foodImage,
                    fit: BoxFit.cover,
                  ),
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 0.0,
                        sigmaY: 0.1,
                      ),
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 12,
                          bottom: 12,
                        ),
                        alignment: Alignment.bottomLeft,
                        color: Colors.black.withOpacity(0.3),
                        child: Text(
                          foodName,
                          style: PrimaryFont.bold600(12).copyWith(
                            color: backgroundGray,
                            // height: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            VerticalDivider(
                              color: mainOrange,
                              width: 2,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              foodCountry,
                              style: PrimaryFont.regular400(10).copyWith(
                                color: mainOrange,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.share,
                          size: 16,
                          color: iconBlack,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButtonOutline(
                        text: 'Edit',
                        press: () {},
                        textBtnSize: 8,
                      ),
                      CustomButtonNotFull(
                        text: 'Mark done',
                        press: () {},
                        textBtnSize: 8,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
