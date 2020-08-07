import 'package:dartz/dartz.dart';
import 'package:seth_flutter/domain/core/failures.dart';
import 'package:seth_flutter/domain/core/value_objects.dart';
import 'package:seth_flutter/domain/core/value_validators.dart';

class QuoteBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 2000;

  factory QuoteBody(String input) {
    assert(input != null);
    return QuoteBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const QuoteBody._(this.value);
}

class QuoteBook extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory QuoteBook(String input) {
    assert(input != null);
    return QuoteBook._(validateStringNotEmpty(input));
  }

  const QuoteBook._(this.value);
}
