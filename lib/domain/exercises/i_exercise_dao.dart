import 'package:seth_flutter/infrastructure/core/moor_database.dart';

abstract class IExerciseDao {
  Stream<List<Exercise>> watchAllExercises();
}
