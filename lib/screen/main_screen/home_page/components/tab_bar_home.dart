import 'package:flutter/material.dart';
import 'package:taste_app/screen/main_screen/home_page/components/all_component/all_component.dart';
import 'package:taste_app/screen/main_screen/home_page/components/drink_component/drink_component.dart';
import 'package:taste_app/screen/main_screen/home_page/components/feature_component/feature_component.dart';
import 'package:taste_app/screen/main_screen/home_page/components/vietnamese_component/vietnamese_component.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/fonts.dart';

class TabBarHome extends StatefulWidget {
  const TabBarHome({Key? key}) : super(key: key);

  @override
  State<TabBarHome> createState() => _TabBarHomeState();
}

class _TabBarHomeState extends State<TabBarHome> {
  /// List of Tab Bar Item
  List<String> categories = [
    "All",
    "Feature",
    "Drink",
    "Vietnamese",
  ];

  /// List of body icon
  List<Widget> categoryContent = [
    AllComponent(),
    FeatureComponent(),
    DrinkComponent(),
    VietnameseComponent()
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 40,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          margin: const EdgeInsets.only(right: 14),
                          decoration: BoxDecoration(
                            color: current == index
                                ? backgroundOrange
                                : backgroundGray,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Center(
                              child: Text(
                                categories[index],
                                style: PrimaryFont.medium500(14).copyWith(
                                    color: current == index
                                        ? mainOrange
                                        : textGray3),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            margin: const EdgeInsets.only(top: 30),
            width: double.infinity,
            height: 550,
            child: categoryContent[current],
          ),
        ),
      ],
    );
  }
}
