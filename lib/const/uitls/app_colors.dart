import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  // Primary Color
  static const Color primary = Color(0xff4A4F61);
  static Color primaryWithOpacityW2 = AppColors.primary.withOpacity(.2);
  static Color primaryWithOpacityW5 = AppColors.primary.withOpacity(.5);
  static Color primaryWithOpacityW6 = AppColors.primary.withOpacity(.6);
  static const Color primaryBackgroud = Color(0xffF5F6FA);
  // Deep White Color
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Colors.black;
  static const Color deepWhte = Color(0xffFFFFFF);
  // Halka Gey Color
  static const Color halkaGrey = Color(0xffEFEEF6);
  // Seller Nav Colors Orange
  static const Color sellerNavColor = Color(0xffFF4E00);
  // Yellow Color
  static const Color yellow = Color(0xffEFB537);
  static const Color rateColor = Color(0xffFFE946);
  // Green Color
  static const Color green = Color(0xff61D618);
  static const Color greenColor = Color(0xff25983A);
  static const Color greenColorStatus = Color(0xff08B51C);
  // Red Color
  static const Color red = Color(0xffFF6A6A);
  // Blue Color
  static const Color blue = Color(0xff44A0E3);

// Grey Colors
  static const Color grey50 = Color(0xfffafafa);
  static const Color grey100 = Color(0xffeeeeee);
  static const Color grey200 = Color(0xffe6e6e6);
  static const Color grey300 = Color(0xffdbdbdb);
  static const Color grey400 = Color(0xffd4d4d4);
  static const Color grey500 = Color(0xffc9c9c9);
  static const Color grey600 = Color(0xffb7b7b7);
  static const Color grey700 = Color(0xff8f8f8f);
  static const Color grey800 = Color(0xff6f6f6f);
  static const Color grey900 = Color(0xff545454);

// Black Colors
  static const Color black50 = Color(0xffeaeaea); // Example color
  static const Color black100 = Color(0xffbdbdbd); // A slightly darker shade
  static const Color black200 = Color(0xff9d9d9d); // A medium-light grey
  static const Color black300 = Color(0xff707070); // A medium grey
  static const Color black400 = Color(0xff555555); // A darker grey
  static const Color black500 = Color(0xff2a2a2a); // A more standard grey
  static const Color black600 = Color(0xff262626); // Darker grey
  static const Color black700 = Color(0xff1e1e1e); // Even darker grey
  static const Color black800 = Color(0xff171717); // Very dark grey
  static const Color black900 = Color(0xff121212); // Almost black

  // Success
  static const Color success = Color(0xff28A745);
  // Complete Req Colors
  static const Color completeReq = Color(0xffEF5546);
  static const Color redColor = Color(0xffFF3333);
  // Error
  static const Color error = Color.fromARGB(255, 221, 46, 84);
  static const Color validationError = Color.fromARGB(255, 179, 2, 2);
}
