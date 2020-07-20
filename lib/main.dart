import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/routes.dart';
import 'package:seth_flutter/src/bloc/quote_bloc.dart';
import 'package:seth_flutter/src/screens/splash/intro_screen.dart';
import 'package:seth_flutter/src/theme/style.dart';
import 'package:seth_flutter/src/utils/quote_repository.dart';

void main() {
  runApp(SethApp());
}

class SethApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => QuoteBloc(FirebaseQuoteRepository()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Seth',
        theme: ThemeData.light(),
        darkTheme: appThemeDark(),
        home: IntroScreen(),
//      initialRoute: '/',
//      routes: routes,
      ),
    );
  }
}
