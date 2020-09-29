import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle get buttonTitle {
    return TextStyle(
      color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16.0);
  }
  static TextStyle get profile {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 24.0);
  }
  static TextStyle get subtitle {
    return TextStyle(
        color: Colors.white,
        fontSize: 16.0);
  }
  static TextStyle get buttonText {
    return TextStyle(
        color: Colors.black,
        fontSize: 16.0);
  }

  static TextStyle get about {
    return TextStyle(
        color: Colors.white,
        fontSize: 14.0);
  }
}