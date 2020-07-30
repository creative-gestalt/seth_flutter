import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seth_flutter/domain/core/failures.dart';
import 'package:seth_flutter/domain/core/value_objects.dart';
import 'package:seth_flutter/domain/quotes/value_objects.dart';

part 'quote.freezed.dart';

@freezed
abstract class Quote implements _$Quote {

  const factory Quote({
    @required UniqueId id,
    @required QuoteBody body,
  }) = _Quote;
  
  const Quote._();

  factory Quote.empty() => Quote(
        id: UniqueId(),
        body: QuoteBody(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit.fold(
      (f) => some(f),
      (_) => none(),
    );
  }
}
