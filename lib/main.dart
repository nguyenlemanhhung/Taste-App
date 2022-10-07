import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:taste_app/routs.dart';
import 'package:taste_app/screen/main_screen/main_screen.dart';
import 'package:taste_app/screen/sign_in/components/sign_in_form.dart';
import 'package:taste_app/screen/sign_in/sign_in_screen.dart';
import 'package:taste_app/screen/splash_screen/splash_screen.dart';
import 'package:taste_app/theme.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Taste App',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
