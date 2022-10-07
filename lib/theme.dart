import 'package:flutter/material.dart';

import 'constants/colors.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: backgroundWhite,
    appBarTheme: const AppBarTheme(
      color: backgroundWhite,
      elevation: 0,
      brightness: Brightness.light,
      // iconTheme: IconThemeData(
      //   color: secondaryGray5,
      // ),
    ),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    // borderSide: BorderSide(color: secondaryGray3),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    border: InputBorder.none,
    filled: true,
    fillColor: backgroundGray,
    contentPadding: EdgeInsets.all(15),
  );
}
