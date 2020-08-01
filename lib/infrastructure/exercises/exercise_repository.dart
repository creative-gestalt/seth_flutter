import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:seth_flutter/domain/core/i_sqlite_database.dart';
import 'package:seth_flutter/domain/exercises/exercise.dart';
import 'package:seth_flutter/domain/exercises/exercise_failure.dart';
import 'package:seth_flutter/infrastructure/core/sqlite_database.dart';

@LazySingleton(as: ISqliteDatabase)
class ExerciseRepository implements ISqliteDatabase {
  final SqliteDatabase _sqliteDatabase;
  
  ExerciseRepository(this._sqliteDatabase);

  @override
  Future<Either<ExerciseFailure, Unit>> update(Exercise exercise) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<ExerciseFailure, KtList<Exercise>>> watchAllExercises() {
    // TODO: implement watchAllExercises
    throw UnimplementedError();
  }
}
