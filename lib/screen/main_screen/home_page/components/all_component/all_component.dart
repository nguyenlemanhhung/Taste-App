import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taste_app/components/custom_button_full.dart';
import 'package:taste_app/constants/colors.dart';
import 'package:taste_app/constants/fonts.dart';

import '../../../../../models/food_data.dart';
import '../feature_component/feature_card.dart';

class AllComponent extends StatelessWidget {
  const AllComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Blog',
                style: PrimaryFont.bold600(18).copyWith(
                  color: textBlack4,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: backgroundGray,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 130.0,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            '/images/blog.png',
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
                                  '42 Foods You Need To Eat In Your Lifetime',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 8,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Read by',
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
                                size: 15,
                                color: textBlue1,
                              ),
                            ],
                          ),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.share))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButtonFull(
                text: 'View all',
                press: () {},
                textBtnSize: 16,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Feature',
                style: PrimaryFont.bold600(18).copyWith(
                  color: textBlack4,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 190,
                child: GridView.builder(
                  itemCount: 2,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) => FeatureCard(
                    foodName: foodData[index].foodName,
                    foodCountry: foodData[index].foodCountry,
                    foodImage: foodData[index].foodImage,
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 18,
              // ),
              CustomButtonFull(
                text: 'View all',
                press: () {},
                textBtnSize: 16,
              ),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
