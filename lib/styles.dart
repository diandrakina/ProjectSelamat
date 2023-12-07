import 'package:flutter/material.dart';

class AppColors {
  static const blue1 = Color.fromRGBO(0, 169, 255, 100);
  static const blue2 = Color.fromRGBO(137, 207, 243, 100);
  static const blue3 = Color.fromRGBO(160, 223, 255, 100);
  static const blue4 = Color.fromRGBO(205, 245, 253, 100);
  static const black = Colors.black;
}

class TextStyles {
  static TextStyle title = const TextStyle(
      fontFamily: 'SamsungSans',
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
      color: AppColors.black);

  static TextStyle body = const TextStyle(
      fontFamily: 'SamsungSans',
      fontWeight: FontWeight.normal,
      fontSize: 16.0,
      color: AppColors.black);
}

class AppDecoration {
  static BoxDecoration get fillBlue1 => BoxDecoration(color: AppColors.blue1);
  static BoxDecoration get fillBlue2 => BoxDecoration(color: AppColors.blue2);
  static BoxDecoration get fillBlue3 => BoxDecoration(color: AppColors.blue3);
  static BoxDecoration get fillBlue4 => BoxDecoration(color: AppColors.blue4);
}
