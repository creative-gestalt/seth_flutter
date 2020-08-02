import 'package:injectable/injectable.dart';
import 'package:seth_flutter/infrastructure/core/moor_database.dart';
import 'package:seth_flutter/infrastructure/exercises/exercises_dao.dart';

@module
abstract class MoorDatabaseInjectableModule {
  @lazySingleton
  ExerciseDao get exerciseDao => ExerciseDao(AppDatabase());
}
