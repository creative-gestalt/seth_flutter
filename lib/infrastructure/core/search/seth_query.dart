import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:seth_flutter/infrastructure/core/search/seth_search.dart';
import 'package:seth_flutter/infrastructure/core/search/seth_search_snapshot.dart';

class SethQuery {
  final SethSearch sethSearch;

  SethQuery(this.sethSearch);

  Future<List<SearchSnapshot>> searchSethEngine(String input) async {
    final url = 'https://findingseth.com/q/$input';
    final snapshots = await _snapshot(url)
        .then((value) => value.map((doc) => SearchSnapshot(doc)).toList());
    return snapshots;
  }

  Future<List<Map<String, dynamic>>> _snapshot(String url) async {
    /// Sends `GET` requests with [url]
    /// Returns list of snapshots
    // Instantiates multiPageResults, basicPageEstimate, and maxPages.
    var basicPageEstimate = 1;
    const maxPages = 10;
    final List<List<Map<String, dynamic>>> multiPageResults = [];
    // Handles getting total results using [url], then we calculate pages.
    final Element results = await _handleRedirect(url, 0)
        .then((value) => value.getElementById('results'));
    final regex = RegExp('of (.*?) fo');
    final String rawCount = regex.hasMatch(results.text)
        ? RegExp('of (.*?) fo').stringMatch(results.text)
        : 'One Page Result';
    if (rawCount != 'One Page Result') {
      final String resultCount = rawCount.substring(2, rawCount.length - 3);
      final int totalPages = (int.parse(resultCount) / 10).round();
      basicPageEstimate = totalPages < maxPages ? totalPages : maxPages;
    }
    // Page estimate drives page fetching loop.
    for (int i = 0; i < basicPageEstimate; i++) {
      final List<Element> hits = await _handleRedirect(url, i)
          .then((value) => value.getElementsByClassName('hit'));
      // Grabs `hit` class from parsed document.
      final List<Map<String, dynamic>> searchResults = hits.map((elements) {
        // Maps heading text to get book title.
        final String book = elements
            .getElementsByClassName('heading')
            .map((i) => i.text)
            .toString()
            .replaceAll(RegExp(r'[()]'), '');
        // Maps `p` tag to get excerpt result.
        final List<Map<String, dynamic>> items = elements
            .getElementsByTagName('p')
            .where((i) => i.text.trim() != "More...")
            .map((i) => {'item': i.text.trim()})
            .toList();
        // Combines maps above into one map format.
        final Map<String, dynamic> map = {'book': book, 'items': items};
        return map;
      }).toList();
      // Adds the final map to our multiPageResults.
      multiPageResults.add(searchResults);
    }
    // We expand our list to flatten it into one big list.
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
