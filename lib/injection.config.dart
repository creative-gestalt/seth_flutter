// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'infrastructure/core/moor/moor_database.dart';
import 'application/auth/auth_bloc.dart';
import 'application/exercises/exercise_actor/exercise_actor_bloc.dart';
import 'infrastructure/exercises/exercises_dao.dart';
import 'application/exercises/exercise_watcher/exercise_watcher_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/exercises/i_exercise_dao.dart';
import 'domain/quotes/i_quotes_repository.dart';
import 'domain/search/i_search_repository.dart';
import 'infrastructure/core/moor/moor_database_injectable_module.dart';
import 'application/quotes/quote_actor/quote_actor_bloc.dart';
import 'application/quotes/quote_form/quote_form_bloc.dart';
import 'infrastructure/quotes/quote_repository.dart';
import 'application/quotes/quote_watcher/quote_watcher_bloc.dart';
import 'application/search/search_actor/search_actor_bloc.dart';
import 'application/search/search_form/search_form_bloc.dart';
import 'infrastructure/core/search/search_injectable_module.dart';
import 'infrastructure/search/search_repository.dart';
import 'application/search/search_watcher/search_watcher_bloc.dart';
import 'infrastructure/core/search/seth_search.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final moorDatabaseInjectableModule = _$MoorDatabaseInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final searchInjectableModule = _$SearchInjectableModule();
  gh.lazySingleton<AppDatabase>(() => moorDatabaseInjectableModule.appDatabase);
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<IExerciseDao>(() => ExerciseDao(get<AppDatabase>()));
  gh.lazySingleton<IQuoteRepository>(() => QuoteRepository(get<Firestore>()));
  gh.factory<QuoteActorBloc>(() => QuoteActorBloc(get<IQuoteRepository>()));
  gh.factory<QuoteFormBloc>(() => QuoteFormBloc(get<IQuoteRepository>()));
  gh.factory<QuoteWatcherBloc>(() => QuoteWatcherBloc(get<IQuoteRepository>()));
  gh.factory<SearchActorBloc>(() => SearchActorBloc());
  gh.lazySingleton<SethSearch>(() => searchInjectableModule.sethSearch);
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<ExerciseActorBloc>(() => ExerciseActorBloc(get<IExerciseDao>()));
  gh.factory<ExerciseWatcherBloc>(
      () => ExerciseWatcherBloc(get<IExerciseDao>()));
  gh.lazySingleton<ISearchRepository>(
      () => SearchRepository(get<SethSearch>()));
  gh.factory<SearchFormBloc>(() => SearchFormBloc(get<ISearchRepository>()));
  gh.factory<SearchWatcherBloc>(
      () => SearchWatcherBloc(get<ISearchRepository>()));
  return get;
}

class _$MoorDatabaseInjectableModule extends MoorDatabaseInjectableModule {}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}

class _$SearchInjectableModule extends SearchInjectableModule {}
