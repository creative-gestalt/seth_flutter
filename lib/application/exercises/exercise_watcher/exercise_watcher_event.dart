part of 'exercise_watcher_bloc.dart';

@freezed
abstract class ExerciseWatcherEvent with _$ExerciseWatcherEvent {
    const factory ExerciseWatcherEvent.watchAllStarted() = _WatchAllStarted;
    const factory ExerciseWatcherEvent.watchFavoriteStarted() = _WatchFavoriteStarted;
    const factory ExerciseWatcherEvent.exercisesReceived(List<Exercise> exercises) = _ExercisesReceived;
}
