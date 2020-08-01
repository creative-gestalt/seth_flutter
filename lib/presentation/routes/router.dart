import 'package:auto_route/auto_route_annotations.dart';
import 'package:seth_flutter/presentation/exercises/exercises_overview_page.dart';
import 'package:seth_flutter/presentation/home/home_hub_page.dart';
import 'package:seth_flutter/presentation/practices/practices_overview_page.dart';
import 'package:seth_flutter/presentation/sign_in/sign_in.dart';
import 'package:seth_flutter/presentation/splash/splash_page.dart';
import 'package:seth_flutter/presentation/quotes/quotes_overview/quotes_overview_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: SplashPage, initial: true),
      MaterialRoute(page: SignInPage),
      MaterialRoute(page: HomeHubPage),
      MaterialRoute(page: ExercisesOverviewPage),
      MaterialRoute(page: PracticesOverviewPage),
      MaterialRoute(page: QuotesOverviewPage),
    ],
)
class $Router {}
