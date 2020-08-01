import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/auth/auth_bloc.dart';
import 'package:seth_flutter/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) =>
                ExtendedNavigator.of(context).pushHomeHubPage(),
            unauthenticated: (_) =>
                ExtendedNavigator.of(context).pushSignInPage()
        );
      },
      child: const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
