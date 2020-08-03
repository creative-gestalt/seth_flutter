part of 'exercise_actor_bloc.dart';

@freezed
abstract class ExerciseActorEvent with _$ExerciseActorEvent {
    const factory ExerciseActorEvent.updated(Exercise exercise) = _Updated;
}
