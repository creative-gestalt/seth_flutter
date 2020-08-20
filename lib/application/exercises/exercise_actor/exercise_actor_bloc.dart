import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:seth_flutter/domain/exercises/exercise_failure.dart';
import 'package:seth_flutter/domain/exercises/i_exercise_dao.dart';
import 'package:seth_flutter/infrastructure/core/moor/moor_database.dart';

part 'exercise_actor_event.dart';
part 'exercise_actor_state.dart';
part 'exercise_actor_bloc.freezed.dart';

@injectable
class ExerciseActorBloc extends Bloc<ExerciseActorEvent, ExerciseActorState> {
  final IExerciseDao _exerciseDao;

  ExerciseActorBloc(this._exerciseDao)
      : super(const ExerciseActorState.initial());

  @override
  Stream<ExerciseActorState> mapEventToState(
    ExerciseActorEvent event,
  ) async* {
    yield* event.map(
      updated: (e) async* {
        yield const ExerciseActorState.actionInProgress();
        await _exerciseDao.updateExercise(event.exercise);
        if (event.exercise.favorite) {
          yield const ExerciseActorState.addedSuccess();
        } else {
          yield const ExerciseActorState.removedSuccess();
        }
      },
    );
  }
}
