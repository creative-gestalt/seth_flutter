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

import 'search_dtos.dart';

@LazySingleton(as: ISearchRepository)
class SearchRepository implements ISearchRepository {
  @override
  Future<Either<SearchFailure, KtList<Search>>> fetchResults(SearchInput search) async {
    try {
      final userInput = search.getOrCrash();
      final url = 'https://findingseth.com/q/$userInput';
      final List<Map<String, dynamic>> mappedList = await _getMultiPageResults(url);

      if (mappedList != null) {
        final KtList<Search> results = mappedList
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

  Future<List<Map<String, dynamic>>> _getMultiPageResults(String url) async {
    const pageCount = 1;
    final List<List<Map<String, dynamic>>> multiPageResults = [];
    for (int i = 0; i < pageCount; i++) {
      final List<Element> hits = await _handleRedirect(url, i)
          .then((value) => value.getElementsByClassName('hit'));

      final List<Map<String, dynamic>> searchResults = hits.map((e) {
        final String book = e.getElementsByClassName('heading').map((i) => i.text).toString().replaceAll(RegExp(r'[()]'), '');
        final List<Map<String, String>> items = e.getElementsByTagName('p').map((i) => {'item' : i.text.trim()}).toList();
        final Map<String, dynamic> map = { 'book': book, 'items': items };
        return map;
      }).toList();
      multiPageResults.add(searchResults);
    }
    return multiPageResults.expand((element) => element).toList();
  }

  Future<Document> _handleRedirect(String url, int number) async {
    final redirect = await http
        .get(Uri.parse(url))
        .then((value) => value.headers['location']);
    final response = await http.get(Uri.parse('$redirect${number}0/'));
    final document = parse(response.body);
    return document;
  }
}
