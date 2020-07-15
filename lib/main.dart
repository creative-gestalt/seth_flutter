import 'package:flutter/material.dart';
import 'package:seth_flutter/routes.dart';

void main() {
  runApp(SethApp());
}

class SethApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seth',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      routes: routes,
    );
  }
}
