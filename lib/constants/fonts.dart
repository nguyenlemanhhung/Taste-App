import 'package:flutter/material.dart';

class PrimaryFont {
  static TextStyle bold600(double size) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: size,
    );
  }

  static TextStyle medium500(double size) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: size,
    );
  }

  static TextStyle regular400(double size) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: size,
    );
  }
}
