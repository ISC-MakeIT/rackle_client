import 'package:flutter/material.dart';

ThemeData rackleTheme = ThemeData(
  appBarTheme: AppBarTheme(
    textTheme: TextTheme(
      title: TextStyle(
        fontSize: 22.62,
        color: Color(0XFF53514B),
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: IconThemeData(
      color: Color(0XFF53514B),
    ),
    elevation: 0,
  ),
  scaffoldBackgroundColor: Color(0XFFFFFFFF),
  textTheme: TextTheme(
    button: TextStyle(
      color: Color(0xFF53514B),
    ),
  ),
  buttonTheme: ButtonThemeData(
    shape: StadiumBorder(),
  ),
  iconTheme: IconThemeData(
    color: Color(0xFFB3BAAB),
  ),
  accentIconTheme: IconThemeData(
    color: Color(0xFF53514B),
  ),
);
