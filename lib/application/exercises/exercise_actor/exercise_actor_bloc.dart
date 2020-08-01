import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'exercise_actor_event.dart';
part 'exercise_actor_state.dart';

class ExerciseActorBloc extends Bloc<ExerciseActorEvent, ExerciseActorState> {
  ExerciseActorBloc() : super(ExerciseActorInitial());

  @override
  Stream<ExerciseActorState> mapEventToState(
    ExerciseActorEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
