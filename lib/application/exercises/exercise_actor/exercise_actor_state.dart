part of 'exercise_actor_bloc.dart';

@freezed
abstract class ExerciseActorState with _$ExerciseActorState {
    const factory ExerciseActorState.initial() = _Initial;
    const factory ExerciseActorState.actionInProgress() = _ActionInProgress;
    const factory ExerciseActorState.addedSuccess() = _AddedSuccess;
    const factory ExerciseActorState.removedSuccess() = _RemovedSuccess;
    const factory ExerciseActorState.updateFailure(ExerciseFailure exerciseFailure) = _UpdateFailure;
}
