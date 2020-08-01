import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_failure.freezed.dart';

@freezed
abstract class ExerciseFailure with _$ExerciseFailure {
    const factory ExerciseFailure.unexpected() = _Unexpected;
    const factory ExerciseFailure.insufficientPermissions() = _InsufficientPermissions;
    const factory ExerciseFailure.unableToUpdate() = _UnableToUpdate;
}
