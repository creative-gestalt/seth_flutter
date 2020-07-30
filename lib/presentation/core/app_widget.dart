import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/auth/auth_bloc.dart';
import 'package:seth_flutter/injection.dart';
import 'package:seth_flutter/presentation/routes/router.gr.dart';
import 'package:seth_flutter/presentation/sign_in/sign_in.dart';
import 'package:seth_flutter/colors.dart';

class SethApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        title: 'Seth',
        debugShowCheckedModeBanner: false,
        builder: ExtendedNavigator(router: Router()),
        home: SignInPage(),
        theme: _sethTheme,
      ),
    );
  }
}

final ThemeData _sethTheme = _buildSethTheme();

ThemeData _buildSethTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    appBarTheme: AppBarTheme(
        color: c04dp, iconTheme: IconThemeData(color: sethOrange300)),
    accentColor: sethOrange300,
    primaryColor: sethOrange500,
    buttonColor: sethOrange300,
    scaffoldBackgroundColor: c01dp,
    cardColor: c04dp,
    textSelectionColor: sethOrange300,
    primaryTextTheme: TextTheme(headline6: TextStyle(color: sethOrange300)),
    splashColor: sethOrange50.withAlpha(100),
    errorColor: sethErrorRed,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: sethOrange500,
      colorScheme: base.colorScheme.copyWith(
        secondary: c00dp,
      ),
    ),
    buttonBarTheme: base.buttonBarTheme.copyWith(
      buttonTextTheme: ButtonTextTheme.accent,
    ),
    floatingActionButtonTheme:
        base.floatingActionButtonTheme.copyWith(backgroundColor: sethOrange300),
//    accentIconTheme: base.iconTheme.copyWith(
//      color: sethOrange500
//    ),
    primaryIconTheme: base.iconTheme.copyWith(color: sethOrange500),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: sethOrange300,
        ),
      ),
      border: OutlineInputBorder(),
    ),
//    textTheme: _buildSethTheme(base.textTheme),
//    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
//    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
  );
}
