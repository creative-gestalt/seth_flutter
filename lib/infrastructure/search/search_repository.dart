import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:seth_flutter/domain/search/i_search_repository.dart';
import 'package:seth_flutter/domain/search/search.dart';
import 'package:seth_flutter/domain/search/search_failure.dart';
import 'package:seth_flutter/domain/search/value_objects.dart';
import 'package:seth_flutter/infrastructure/core/search/seth_query.dart';
import 'package:seth_flutter/infrastructure/core/search/seth_search.dart';
import 'package:seth_flutter/infrastructure/core/search/seth_search_snapshot.dart';

import 'search_dtos.dart';

@LazySingleton(as: ISearchRepository)
class SearchRepository implements ISearchRepository {
  final SethSearch _sethSearch;

  SearchRepository(this._sethSearch);

  @override
  Future<Either<SearchFailure, KtList<Search>>> fetchResults(SearchInput search) async {
    try {
      final userInput = search.getOrCrash();
      final List<SearchSnapshot> sethDocument = await
          _sethSearch.resultCollection().searchSethCollection(userInput);

      if (sethDocument != null) {
        final KtList<Search> results = sethDocument
            .map((doc) => SearchDto.fromFindingSeth(doc).toDomain())
            .toImmutableList();
        return right(results);
      } else {
        return right(null);
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
