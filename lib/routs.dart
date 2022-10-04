import 'package:flutter/material.dart';
import 'package:taste_app/screen/main_screen/main_screen.dart';
import 'package:taste_app/screen/sign_in/sign_in_screen.dart';
import 'package:taste_app/screen/sign_up/sign_up_screen.dart';
import 'package:taste_app/screen/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  //auth scren
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  // SetupProfileScreen.routeName: (context) => SetupProfileScreen(),

  MainScreen.routeName: (context) => MainScreen(),

  // //home children
  // FeatureBillScreen.routeName: (context) => FeatureBillScreen(),
  // FeatureSelectCard.routeName: (context) => const FeatureSelectCard(),
  // FeatureTransfer.routeName: (context) => const FeatureTransfer(),
  // FeatureRequestScreen.routeName: (context) => FeatureRequestScreen(),
  // FeatureTopupScreen.routeName: (context) => FeatureTopupScreen(),

  // AllBillPayPage.routeName: (context) => AllBillPayPage(),
};
