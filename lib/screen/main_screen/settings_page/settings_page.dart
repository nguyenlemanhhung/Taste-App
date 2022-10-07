import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taste_app/constants/colors.dart';
import 'package:taste_app/constants/fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          initialIndex: 1,
          child: Column(
            children: [
              Container(
                child: TabBar(
                  labelPadding: EdgeInsets.only(bottom: 10),
                  // indicatorPadding: EdgeInsets.only(top: 5),
                  labelColor: mainOrange,
                  unselectedLabelColor: textBlack6,
                  indicatorColor: mainOrange,
                  tabs: [
                    Text(
                      'Tab 1',
                    ),
                    Text(
                      'Tab 2',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(
                      child: Text('tab1'),
                    ),
                    Center(
                      child: Text('tab2'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
