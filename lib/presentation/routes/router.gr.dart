// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/quotes/quote.dart';
import '../direction/direction_page.dart';
import '../exercises/exercises_overview_page.dart';
import '../home/home_hub_page.dart';
import '../practices/practices_overview_page.dart';
import '../quotes/quote_form/quote_form_page.dart';
import '../quotes/quotes_overview/quotes_overview_page.dart';
import '../search/search_overview_page.dart';
import '../sign_in/sign_in.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String homeHubPage = '/home-hub-page';
  static const String searchOverviewPage = '/search-overview-page';
  static const String exercisesOverviewPage = '/exercises-overview-page';
  static const String practicesOverviewPage = '/practices-overview-page';
  static const String directionPage = '/direction-page';
  static const String quotesOverviewPage = '/quotes-overview-page';
  static const String quoteFormPage = '/quote-form-page';
  static const all = <String>{
    splashPage,
    signInPage,
    homeHubPage,
    searchOverviewPage,
    exercisesOverviewPage,
    practicesOverviewPage,
    directionPage,
    quotesOverviewPage,
    quoteFormPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.homeHubPage, page: HomeHubPage),
    RouteDef(Routes.searchOverviewPage, page: SearchOverviewPage),
    RouteDef(Routes.exercisesOverviewPage, page: ExercisesOverviewPage),
    RouteDef(Routes.practicesOverviewPage, page: PracticesOverviewPage),
    RouteDef(Routes.directionPage, page: DirectionPage),
    RouteDef(Routes.quotesOverviewPage, page: QuotesOverviewPage),
    RouteDef(Routes.quoteFormPage, page: QuoteFormPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    HomeHubPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeHubPage(),
        settings: data,
      );
    },
    SearchOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchOverviewPage(),
        settings: data,
      );
    },
    ExercisesOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ExercisesOverviewPage(),
        settings: data,
      );
    },
    PracticesOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PracticesOverviewPage(),
        settings: data,
      );
    },
    DirectionPage: (data) {
      final args = data.getArgs<DirectionPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => DirectionPage(
          key: args.key,
          name: args.name,
          direction: args.direction,
        ),
        settings: data,
      );
    },
    QuotesOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => QuotesOverviewPage(),
        settings: data,
      );
    },
    QuoteFormPage: (data) {
      final args = data.getArgs<QuoteFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => QuoteFormPage(
          key: args.key,
          editedQuote: args.editedQuote,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushHomeHubPage() => push<dynamic>(Routes.homeHubPage);

  Future<dynamic> pushSearchOverviewPage() =>
      push<dynamic>(Routes.searchOverviewPage);

  Future<dynamic> pushExercisesOverviewPage() =>
      push<dynamic>(Routes.exercisesOverviewPage);

  Future<dynamic> pushPracticesOverviewPage() =>
      push<dynamic>(Routes.practicesOverviewPage);

  Future<dynamic> pushDirectionPage({
    Key key,
    @required String name,
    @required String direction,
  }) =>
      push<dynamic>(
        Routes.directionPage,
        arguments:
            DirectionPageArguments(key: key, name: name, direction: direction),
      );

  Future<dynamic> pushQuotesOverviewPage() =>
      push<dynamic>(Routes.quotesOverviewPage);

  Future<dynamic> pushQuoteFormPage({
    Key key,
    @required Quote editedQuote,
  }) =>
      push<dynamic>(
        Routes.quoteFormPage,
        arguments: QuoteFormPageArguments(key: key, editedQuote: editedQuote),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DirectionPage arguments holder class
class DirectionPageArguments {
  final Key key;
  final String name;
  final String direction;
  DirectionPageArguments(
      {this.key, @required this.name, @required this.direction});
}

/// QuoteFormPage arguments holder class
class QuoteFormPageArguments {
  final Key key;
  final Quote editedQuote;
  QuoteFormPageArguments({this.key, @required this.editedQuote});
}
