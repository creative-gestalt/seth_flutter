import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seth_flutter/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:seth_flutter/application/auth/auth_bloc.dart';
import 'package:seth_flutter/presentation/routes/router.gr.dart';
import 'package:seth_flutter/presentation/sign_in/sign_in.dart';
import 'package:seth_flutter/presentation/core/theme/theme_data.dart';

class SethApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _changeNavigationColor();
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
        theme: sethTheme,
      ),
    );
  }
}

void _changeNavigationColor() async {
  try {
    await FlutterStatusbarcolor.setNavigationBarColor(Colors.black, animate: true);
  } on PlatformException catch (e) {
    debugPrint(e.toString());
  }
}
