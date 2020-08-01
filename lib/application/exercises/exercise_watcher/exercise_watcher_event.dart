part of 'exercise_watcher_bloc.dart';

@freezed
abstract class ExerciseWatcherEvent with _$ExerciseWatcherEvent {
  const factory ExerciseWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory ExerciseWatcherEvent.exercisesRecieved(
    Either<ExerciseFailure, KtList<Exercise>> failureOrExercises,
  ) = _ExercisesReceived;
}
