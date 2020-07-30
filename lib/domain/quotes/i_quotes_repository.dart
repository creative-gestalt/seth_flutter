import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:seth_flutter/domain/quotes/quote_failure.dart';
import 'package:seth_flutter/domain/quotes/quote.dart';

abstract class IQuoteRepository {
  Stream<Either<QuoteFailure, KtList<Quote>>> watchAll();
  Future<Either<QuoteFailure, Unit>> create(Quote quote);
  Future<Either<QuoteFailure, Unit>> update(Quote quote);
  Future<Either<QuoteFailure, Unit>> delete(Quote quote);
}
