import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seth_flutter/domain/core/errors.dart';
import 'package:seth_flutter/domain/core/failures.dart';
import 'package:seth_flutter/domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
            (l) => left(l),
            (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();


  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<String> {
    @override
    final Either<ValueFailure<String>, String> value;

    factory UniqueId() {
        return UniqueId._(
          right(Uuid().v1()),
        );
    }

    factory UniqueId.fromUniqueString(String uniqueId) {
      assert(uniqueId != null);
      return UniqueId._(
        right(uniqueId),
      );
    }

    const UniqueId._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String name) {
    assert(name != null);
    return Name._(
      validateStringNotEmpty(name),
    );
  }

  const Name._(this.value);
}

class Directions extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Directions(String directions) {
    assert(directions != null);
    return Directions._(
      validateStringNotEmpty(directions),
    );
  }

  const Directions._(this.value);
}

class Book extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Book(String book) {
    assert(book != null);
    return Book._(
      validateStringNotEmpty(book),
    );
  }

  const Book._(this.value);
}

class Favorite extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Favorite(String favorite) {
    assert(favorite != null);
    return Favorite._(
      validateStringNotEmpty(favorite),
    );
  }

  const Favorite._(this.value);
}
