import 'package:flutter/material.dart';

import 'colors.dart';

final ThemeData sethTheme = _buildSethTheme();

ThemeData _buildSethTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    appBarTheme: AppBarTheme(
        color: c04dp,
        actionsIconTheme: IconThemeData(color: Colors.cyan[300])),
    primaryColor: Colors.orange[900],
    accentColor: Colors.orange[300],
    buttonColor: Colors.orange[300],
    scaffoldBackgroundColor: c01dp,
    cardColor: c04dp,
    textSelectionColor: Colors.orange[300],
    primaryTextTheme: TextTheme(
        headline5: TextStyle(color: Colors.orange[200].withAlpha(150), fontStyle: FontStyle.italic),
        headline6: TextStyle(color: Colors.orange[500]),
        bodyText2: TextStyle(color: Colors.white70, height: 1.5),
    ),
    accentTextTheme: TextTheme(
        bodyText2: TextStyle(color: Colors.orange[100]),
    ),
    splashColor: Colors.orange[300].withAlpha(100),
    errorColor: Colors.red[900],
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: Colors.orange[500],
      colorScheme: base.colorScheme.copyWith(
        secondary: c00dp,
      ),
    ),
    buttonBarTheme: base.buttonBarTheme.copyWith(
      buttonTextTheme: ButtonTextTheme.accent,
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme
        .copyWith(backgroundColor: Colors.orange[300]),
//    accentIconTheme: base.iconTheme.copyWith(
//      color: sethOrange500
//    ),
    primaryIconTheme: base.iconTheme.copyWith(color: Colors.orange[500]),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: Colors.orange[300],
        ),
      ),
      border: const OutlineInputBorder(),
    ),
//    textTheme: _buildSethTheme(base.textTheme),
//    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
//    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
  );
}
