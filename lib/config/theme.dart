import '../constants/colors.dart';
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.dark,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: kBlackColor,
      shape: CircleBorder(),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.transparent,
      shadowColor: Colors.transparent,
      shape: StadiumBorder(),
    ),
    
  ),
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
    ),
    headline5: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline6: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: Colors.white,
      letterSpacing: 0.8,
    ),
    headline2: TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.w600,
    ),
  ),
);
