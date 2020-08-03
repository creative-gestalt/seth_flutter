import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:seth_flutter/domain/exercises/i_exercises.dart';
import 'package:seth_flutter/domain/exercises/i_exercise_dao.dart';
import 'package:seth_flutter/infrastructure/core/moor_database.dart';

part 'exercises_dao.g.dart';

@LazySingleton(as: IExerciseDao)
@UseDao(tables: [Exercises])
class ExerciseDao extends DatabaseAccessor<AppDatabase>
    with _$ExerciseDaoMixin
    implements IExerciseDao {
  final AppDatabase db;

  ExerciseDao(this.db) : super(db);

  @override
  Stream<List<Exercise>> watchAllExercises() => select(exercises).watch();

  @override
  Stream<List<Exercise>> watchFavoriteExercises() {
    return (select(exercises)
          ..orderBy([
            (t) =>
                OrderingTerm(expression: t.favorite, mode: OrderingMode.desc),
          ])
          ..where((t) => t.favorite.equals(true)))
        .watch();
  }

  @override
  Future updateExercise(Exercise exercise) =>
      update(exercises).replace(exercise);
}
