import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seth_flutter/domain/core/failures.dart';
import 'package:seth_flutter/domain/core/value_objects.dart';

part 'exercise.freezed.dart';

@freezed
abstract class Exercise implements _$Exercise {

  const factory Exercise({
    @required String id,
    @required Name name,
    @required Directions directions,
    @required Book book,
    @required Favorite favorite,
  }) = _Exercise;

  const Exercise._();

  factory Exercise.empty() => Exercise(
        id: '',
        name: Name(''),
        directions: Directions(''),
        book: Book(''),
        favorite: Favorite(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return directions.failureOrUnit.fold(
      (f) => some(f),
      (_) => none(),
    );
  }
}
