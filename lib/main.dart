import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seth_flutter/routes.dart';
import 'package:seth_flutter/src/screens/splash/intro_screen.dart';
import 'package:seth_flutter/src/theme/style.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(SethApp());
}

class SethApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seth',
      theme: ThemeData.light(),
      darkTheme: appThemeDark(),
      home: IntroScreen(),
//      initialRoute: '/',
//      routes: routes,
    );
  }
}
