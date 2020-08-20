import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:kt_dart/collection.dart';
import 'package:seth_flutter/domain/search/i_search_repository.dart';
import 'package:seth_flutter/domain/search/search.dart';
import 'package:seth_flutter/domain/search/search_failure.dart';
import 'package:seth_flutter/domain/search/value_objects.dart';
import 'package:seth_flutter/infrastructure/core/search/seth_search.dart';
import 'package:seth_flutter/infrastructure/core/search/seth_search_snapshot.dart';

import 'search_dtos.dart';

@LazySingleton(as: ISearchRepository)
class SearchRepository implements ISearchRepository {
  final SethSearch _sethSearch;

  SearchRepository(this._sethSearch);

  @override
  Future<Either<SearchFailure, KtList<Search>>> fetchResults({
    @required SearchInput search
  }) async {
    try {
      final String userInput = search.getOrCrash();
      final List<SearchSnapshot> sethDocument = await
          _sethSearch.resultCollection().searchSethEngine(userInput);

      if (sethDocument.isNotEmpty) {
        final KtList<Search> results = sethDocument
            .map((doc) => SearchDto.fromFindingSeth(doc).toDomain())
            .toImmutableList();
        return right(results);
      } else {
        return right(KtList.empty());
      }
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const SearchFailure.insufficientPermissions());
      } else {
        return left(const SearchFailure.unexpected());
      }
    }
  }
}
