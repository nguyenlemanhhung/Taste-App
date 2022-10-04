import 'package:flutter/material.dart';
import 'package:taste_app/constants/colors.dart';
import 'package:taste_app/screen/main_screen/food_bucket_page/food_bucket_page.dart';
import 'package:taste_app/screen/main_screen/home_page/home_page.dart';
import 'package:taste_app/screen/main_screen/profile_page/profile_page.dart';
import 'package:taste_app/screen/main_screen/settings_page/settings_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static String routeName = "/main";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPage = 0;

  final List<Widget> pages = [
    HomePage(),
    FoodBucketPage(),
    ProfilePage(),
    SettingsPage(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  static String routeName = '/main';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 66,
        width: 66,
        child: FloatingActionButton(
          elevation: 2,
          backgroundColor: mainOrange,
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          color: backgroundWhite,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 28,
              right: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MaterialButton(
                      minWidth: 28,
                      onPressed: () {
                        setState(() {
                          currentScreen = HomePage();
                          _currentPage = 0;
                        });
                      },
                      child: Icon(
                        Icons.home,
                        size: 30,
                        color: _currentPage == 0 ? mainOrange : iconHint,
                      ),
                    ),
                    MaterialButton(
                      minWidth: 28,
                      onPressed: () {
                        setState(() {
                          currentScreen = FoodBucketPage();
                          _currentPage = 1;
                        });
                      },
                      child: Icon(
                        Icons.list,
                        size: 30,
                        color: _currentPage == 1 ? mainOrange : iconHint,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MaterialButton(
                      minWidth: 28,
                      onPressed: () {
                        setState(() {
                          currentScreen = ProfilePage();
                          _currentPage = 2;
                        });
                      },
                      child: Icon(
                        Icons.person,
                        size: 30,
                        color: _currentPage == 2 ? mainOrange : iconHint,
                      ),
                    ),
                    MaterialButton(
                      minWidth: 28,
                      onPressed: () {
                        setState(() {
                          currentScreen = SettingsPage();
                          _currentPage = 3;
                        });
                      },
                      child: Icon(
                        Icons.settings,
                        size: 30,
                        color: _currentPage == 3 ? mainOrange : iconHint,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
