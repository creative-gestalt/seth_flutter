import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seth_flutter/domain/core/value_objects.dart';
import 'package:seth_flutter/domain/exercises/exercise.dart';

part 'exercise_dtos.freezed.dart';
part 'exercise_dtos.g.dart';

@freezed
abstract class ExerciseDto implements _$ExerciseDto {
  const factory ExerciseDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required String directions,
    @required String book,
    @required String favorite,
  }) = _ExerciseDto;

  const ExerciseDto._();

  factory ExerciseDto.fromDomain(Exercise exercise) {
    return ExerciseDto(
      id: exercise.id,
      name: exercise.name.getOrCrash(),
      directions: exercise.directions.getOrCrash(),
      book: exercise.book.getOrCrash(),
      favorite: exercise.favorite.getOrCrash(),
    );
  }

  Exercise toDomain() {
    return Exercise(
      id: id,
      name: Name(name),
      directions: Directions(directions),
      book: Book(book),
      favorite: Favorite(favorite),
    );
  }

  factory ExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$ExerciseDtoFromJson(json);
}
