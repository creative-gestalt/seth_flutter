import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:seth_flutter/domain/core/failures.dart';
import 'package:seth_flutter/domain/core/value_objects.dart';
import 'package:seth_flutter/domain/core/value_validators.dart';

class SearchBook extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SearchBook(String input) {
    assert(input != null);
    return SearchBook._(
        validateStringNotEmpty(input)
    );
  }

  const SearchBook._(this.value);
}

class SearchBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SearchBody(String input) {
    assert(input != null);
    return SearchBody._(
      validateStringNotEmpty(input)
    );
  }

  const SearchBody._(this.value);
}

class SearchInput extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory SearchInput(String input) {
    assert(input != null);
    return SearchInput._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const SearchInput._(this.value);
}

class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 4;

  factory List3(KtList<T> input) {
    assert(input != null);
    return List3._(
      validateMaxListLength(input, maxLength),
    );
  }

  const List3._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
