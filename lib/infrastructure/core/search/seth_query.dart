import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:seth_flutter/infrastructure/core/search/seth_search.dart';
import 'package:seth_flutter/infrastructure/core/search/seth_search_snapshot.dart';

class SethQuery {
  final SethSearch sethSearch;

  SethQuery(this.sethSearch);

  Future<List<SearchSnapshot>> searchSethCollection(String input) async {
    final url = 'https://findingseth.com/q/$input';
    final snapshots = await snapshot(url)
        .then((value) => value.map((doc) => SearchSnapshot(doc)).toList());
    return snapshots;
  }

  Future<List<Map<String, dynamic>>> snapshot(String url) async {
    const pageCount = 1;
    final List<List<Map<String, dynamic>>> multiPageResults = [];
    for (int i = 0; i < pageCount; i++) {
      final List<Element> hits = await _handleRedirect(url, i)
          .then((value) => value.getElementsByClassName('hit'));

      final List<Map<String, dynamic>> searchResults = hits.map((elements) {
        final String book = elements
            .getElementsByClassName('heading')
            .map((i) => i.text)
            .toString()
            .replaceAll(RegExp(r'[()]'), '');
        final List<Map<String, dynamic>> items = elements
            .getElementsByTagName('p')
            .map((i) => {'item': i.text.trim()})
            .toList();
        final Map<String, dynamic> map = {'book': book, 'items': items};
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
