import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taste_app/models/food_data.dart';
import 'package:taste_app/screen/main_screen/home_page/components/feature_component/feature_card.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/fonts.dart';

class FeatureComponent extends StatelessWidget {
  const FeatureComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Feature',
          style: PrimaryFont.bold600(18).copyWith(
            color: textBlack4,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: GridView.builder(
            itemCount: foodData.length,
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
      ],
    );
  }
}
