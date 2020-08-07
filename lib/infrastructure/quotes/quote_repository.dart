import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kt_dart/collection.dart';
import 'package:seth_flutter/domain/quotes/i_quotes_repository.dart';
import 'package:seth_flutter/domain/quotes/quote.dart';
import 'package:seth_flutter/domain/quotes/quote_failure.dart';
import 'package:seth_flutter/infrastructure/core/firebase/firestore_helpers.dart';
import 'package:seth_flutter/infrastructure/quotes/quote_dtos.dart';

@LazySingleton(as: IQuoteRepository)
class QuoteRepository implements IQuoteRepository {
  final Firestore _firestore;

  QuoteRepository(this._firestore);

  @override
  Stream<Either<QuoteFailure, KtList<Quote>>> watchAll() async* {
    // users/{user ID}/quotes/{quote ID}
    final userDoc = await _firestore.userDocument();
    yield* userDoc.quoteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<QuoteFailure, KtList<Quote>>(
            snapshot.documents
                .map((doc) => QuoteDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith(
      (e) {
        if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
          return left(const QuoteFailure.insufficientPermissions());
        } else {
          // log.error(e.toString))
          return left(const QuoteFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<QuoteFailure, Unit>> create(Quote quote) async {
    try {
      final userDoc = await _firestore.userDocument();
      final quoteDto = QuoteDto.fromDomain(quote);

      await userDoc.quoteCollection
          .document(quoteDto.id)
          .setData(quoteDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const QuoteFailure.insufficientPermissions());
      } else {
        return left(const QuoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<QuoteFailure, Unit>> update(Quote quote) async {
    try {
      final userDoc = await _firestore.userDocument();
      final quoteDto = QuoteDto.fromDomain(quote);

      await userDoc.quoteCollection
          .document(quoteDto.id)
          .updateData(quoteDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const QuoteFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const QuoteFailure.unableToUpdate());
      } else {
        return left(const QuoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<QuoteFailure, Unit>> delete(Quote quote) async {
    try {
      final userDoc = await _firestore.userDocument();
      final quoteId = quote.id.getOrCrash();

      await userDoc.quoteCollection.document(quoteId).delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const QuoteFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const QuoteFailure.unableToUpdate());
      } else {
        return left(const QuoteFailure.unexpected());
      }
    }
  }
}
