import 'package:flutter/material.dart';
import 'package:flutter_blog_app/core/utils/colors/hex_color_util.dart';

ThemeData flutterBlogAppAppTheme() {
  final ThemeData data = ThemeData(
    primaryColorDark: const Color(0xffF2F2F2),
    primaryColor: HexColor("#110F22"),
    primarySwatch: const MaterialColor(0xFF880E4F, {
      50: Color.fromRGBO(136, 14, 79, .1),
      100: Color.fromRGBO(136, 14, 79, .2),
      200: Color.fromRGBO(136, 14, 79, .3),
      300: Color.fromRGBO(136, 14, 79, .4),
      400: Color.fromRGBO(136, 14, 79, .5),
      500: Color.fromRGBO(136, 14, 79, .6),
      600: Color.fromRGBO(136, 14, 79, .7),
      700: Color.fromRGBO(136, 14, 79, .8),
      800: Color.fromRGBO(136, 14, 79, .9),
      900: Color.fromRGBO(136, 14, 79, 1),
    }),
    accentColor: HexColor("#110F22"),
    textSelectionColor: const Color(0xFFBEC2CE),
    buttonColor: const Color(0xFF6619EA),
    brightness: Brightness.light,
    splashColor: HexColor("#110F22"),
    textSelectionHandleColor: HexColor("#110F22"),
    appBarTheme: const AppBarTheme(
        textTheme: TextTheme(
      bodyText1: TextStyle(
          fontFamily: "Avenir LT Std",
          fontWeight: FontWeight.w200,
          fontSize: 15,
          color: Colors.black),
    )),
    textTheme: const TextTheme(
      //TextFields
      bodyText1: TextStyle(
        fontFamily: "Open Sans",
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontFamily: "Open Sans",
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Colors.black,
      ),
      button: TextStyle(
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w700,
        fontSize: 17,
        color: Colors.black,
      ),
    ),
  );

  return data;
}
