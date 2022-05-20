import 'package:flutter/material.dart';

const double bxHeightRatio = 0.97;
const double bxWidthRatio = 0.5;
const double bxBorderRadius = 20;

const BX_COLOR = Color(0xffE0E0E0);
const BACKGROUND_COLOR = Color(0xffC2C2C2);
const COLOR_PRIMARY = Color(0xff7A6BD8);
const COLOR_White = Colors.white;
const COLOR_Grey1 = Color(0xff545454);
const COLOR_Grey2 = Color(0xffD0D0D0);
const COLOR_Green1 = Color(0xff78A55A);

const titleText = 'STRATEGY GENERATOR';

BoxDecoration bxDecorations = BoxDecoration(
    color: BX_COLOR,
    borderRadius: BorderRadius.circular(bxBorderRadius),
    boxShadow: const [
      BoxShadow(
        color: COLOR_Grey1,
        offset: Offset(20, 20),
        blurRadius: 30,
        spreadRadius: 0,
      )
    ]);

ThemeData defalutTheme = ThemeData(
  backgroundColor: BACKGROUND_COLOR,
  canvasColor: BACKGROUND_COLOR,
  primaryColor: COLOR_PRIMARY,
  textTheme: const TextTheme(
    headline4: TextStyle(
      color: COLOR_PRIMARY,
    ),
    headline5: TextStyle(fontWeight: FontWeight.bold),
    subtitle1: TextStyle(fontWeight: FontWeight.bold),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(primary: COLOR_PRIMARY, elevation: 5),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: COLOR_White,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(5),
    ),
  ),
);