import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/fonts.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({
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
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.share,
                              size: 16,
                              color: iconBlack,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.add_circle_outline,
                              size: 16,
                              color: mainOrange,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Done by',
                        style: PrimaryFont.regular400(8).copyWith(
                          color: textBlack5,
                        ),
                      ),
                      Text(
                        '112',
                        style: PrimaryFont.regular400(8).copyWith(
                          color: textBlue1,
                        ),
                      ),
                      Icon(
                        Icons.person,
                        size: 10,
                        color: textBlue1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
