import 'package:flutter/material.dart';

ThemeData appThemeDark() {
  return ThemeData(
    primaryColor: Colors.red,
    accentColor: Colors.black,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    cardColor: Colors.white.withAlpha(40),
    dividerColor: Colors.orange,
    appBarTheme: AppBarTheme(color: Colors.black),
    textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.green),
      bodyText2: TextStyle(color: Colors.blue),
    ),
    textSelectionColor: Colors.orange,
    primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.orange)),
    iconTheme: IconThemeData(color: Colors.orange),
    accentIconTheme: IconThemeData(color: Colors.orange),
    primaryIconTheme: IconThemeData(color: Colors.orange),
  );
}
