import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:seth_flutter/domain/exercises/i_exercises.dart';
import 'package:seth_flutter/infrastructure/core/moor_database.dart';

part 'exercises_dao.g.dart';

@LazySingleton(as: ExerciseDao)
@UseDao(tables: [Exercises])
class ExerciseDao extends DatabaseAccessor<AppDatabase> with _$ExerciseDaoMixin {
  final AppDatabase db;

  ExerciseDao(this.db) : super(db);

  Stream<List<Exercise>> watchAllExercises() => select(exercises).watch();
}
