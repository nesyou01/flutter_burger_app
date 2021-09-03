import '../constants/colors.dart';
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: kDarkColor,
  appBarTheme: AppBarTheme(
    backgroundColor: kDarkColor,
    elevation: 0,
  ),
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),headline5: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline2: TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.w600,
    ),
  ), 
);
