import 'package:auto_route/auto_route_annotations.dart';
import 'package:seth_flutter/presentation/sign_in/sign_in.dart';
import 'package:seth_flutter/presentation/splash/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
}
