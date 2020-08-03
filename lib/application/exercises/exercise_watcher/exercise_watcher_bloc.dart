import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:seth_flutter/domain/exercises/exercise_failure.dart';
import 'package:seth_flutter/domain/exercises/i_exercise_dao.dart';
import 'package:seth_flutter/infrastructure/core/moor_database.dart';

part 'exercise_watcher_event.dart';
part 'exercise_watcher_state.dart';
part 'exercise_watcher_bloc.freezed.dart';

@injectable
class ExerciseWatcherBloc
    extends Bloc<ExerciseWatcherEvent, ExerciseWatcherState> {
  final IExerciseDao _exerciseDao;

  StreamSubscription<List<Exercise>> _exerciseSubscription;

  ExerciseWatcherBloc(this._exerciseDao)
      : super(const ExerciseWatcherState.initial());

  @override
  Stream<ExerciseWatcherState> mapEventToState(
    ExerciseWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ExerciseWatcherState.loadInProgress();
        await _exerciseSubscription?.cancel();
        _exerciseSubscription = _exerciseDao.watchAllExercises().listen(
            (exerciseData) => add(ExerciseWatcherEvent.exercisesReceived(exerciseData)));
      },
      watchFavoriteStarted: (e) async* {
        yield const ExerciseWatcherState.loadInProgress();
        await _exerciseSubscription?.cancel();
        _exerciseSubscription = _exerciseDao.watchFavoriteExercises().listen(
            (exerciseData) => add(ExerciseWatcherEvent.exercisesReceived(exerciseData)));
      },
      exercisesReceived: (e) async* {
        yield ExerciseWatcherState.loadSuccess(e.exercises);
      },
    );
  }

  @override
  Future<void> close() async {
    await _exerciseSubscription?.cancel();
    return super.close();
  }
}
