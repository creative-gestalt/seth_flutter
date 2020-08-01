import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:seth_flutter/domain/exercises/exercise.dart';
import 'package:seth_flutter/domain/exercises/exercise_failure.dart';

abstract class ISqliteDatabase {
  Stream<Either<ExerciseFailure, KtList<Exercise>>> watchAllExercises();
  Future<Either<ExerciseFailure, Unit>> update(Exercise exercise);
}
