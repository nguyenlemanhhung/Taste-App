import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taste_app/constants/colors.dart';
import 'package:taste_app/constants/fonts.dart';
import 'package:taste_app/screen/main_screen/profile_page/components/activegoals_card.dart';

class TabBarProfile extends StatefulWidget {
  const TabBarProfile({super.key});

  @override
  State<TabBarProfile> createState() => _TabBarProfileState();
}

class _TabBarProfileState extends State<TabBarProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Column(
        children: [
          Container(
            child: TabBar(
              labelPadding: EdgeInsets.only(bottom: 10),
              // indicatorPadding: EdgeInsets.only(top: 5),
              // labelColor: mainOrange,
              labelStyle: PrimaryFont.bold600(12).copyWith(
                color: mainOrange,
              ),
              // unselectedLabelColor: textBlack6,
              indicatorColor: mainOrange,
              tabs: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Active goals',
                      ),
                      TextSpan(
                        text: '(100)',
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Completed',
                      ),
                      TextSpan(
                        text: '(4)',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(
                  child: ActiveGoalsCard(
                    foodCountry: 'china',
                    foodName: 'Dumpling',
                    foodImage: '/images/feature/feature-7.png',
                  ),
                ),
                Center(
                  child: Text('tab2'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
