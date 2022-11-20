import 'package:flutter/material.dart';

class AppColors {
  static Map<int, Color> primarySwatch = {
    50: const Color.fromRGBO(112, 0, 255, .1),
    100: const Color.fromRGBO(112, 0, 255, .2),
    200: const Color.fromRGBO(112, 0, 255, .3),
    300: const Color.fromRGBO(112, 0, 255, .4),
    400: const Color.fromRGBO(112, 0, 255, .5),
    500: const Color.fromRGBO(112, 0, 255, .6),
    600: const Color.fromRGBO(112, 0, 255, .7),
    700: const Color.fromRGBO(112, 0, 255, .8),
    800: const Color.fromRGBO(112, 0, 255, .9),
    900: const Color.fromRGBO(112, 0, 255, 1),
  };
  // theme based colors
  static const accent = Color(0xFFFF9C00);
  static const text = Colors.black;
  static const textSecondary = Colors.grey;
  static const textDialogTitle = Color(0xFF151926);

  // fixed colors
  static const white = Colors.white;
  static const black = Colors.black;
  static const grey = Colors.grey;
  static const grey20 = Color(0xFFEEEEEE);
  static const lightGrey = Color(0xFFBDBDBD);
  static const red = Colors.redAccent;
  static const green = Colors.green;

  ///AppColors
  static const primaryColor = Color(0xFF7000FF);
  static const borderColor = Color(0xFFEEEEEE);
}
