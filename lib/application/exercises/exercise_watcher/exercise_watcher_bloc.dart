import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:seth_flutter/domain/core/i_sqlite_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seth_flutter/domain/exercises/exercise.dart';
import 'package:seth_flutter/domain/exercises/exercise_failure.dart';

part 'exercise_watcher_event.dart';
part 'exercise_watcher_state.dart';
part 'exercise_watcher_bloc.freezed.dart';

@injectable
class ExerciseWatcherBloc extends Bloc<ExerciseWatcherEvent, ExerciseWatcherState> {
  final ISqliteDatabase _sqliteDatabase;

  StreamSubscription<Either<ExerciseFailure, KtList<Exercise>>>
      _exerciseStreamSubscription;

  ExerciseWatcherBloc(this._sqliteDatabase)
      : super(const ExerciseWatcherState.initial());

  @override
  Stream<ExerciseWatcherState> mapEventToState(
    ExerciseWatcherEvent event,
  ) async* {
    yield* event.map(watchAllStarted: (e) async* {
      yield const ExerciseWatcherState.loadInProgress();
      _exerciseStreamSubscription = _sqliteDatabase.watchAllExercises().listen(
          (failureOrExercises) =>
              add(ExerciseWatcherEvent.exercisesRecieved(failureOrExercises)));
    }, exercisesRecieved: (e) async* {
      yield e.failureOrExercises.fold(
        (f) => ExerciseWatcherState.loadFailure(f),
        (exercises) => ExerciseWatcherState.loadSuccess(exercises),
      );
    });
  }

  @override
  Future<void> close() async {
    await _exerciseStreamSubscription?.cancel();
    return super.close();
  }
}
