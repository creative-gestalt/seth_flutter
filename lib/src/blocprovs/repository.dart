import 'package:seth_flutter/src/blocprovs/quote_api_provider.dart';

class Repository {
  final _firebaseProvider = QuoteApiProvider();

  Stream<void> fetchAllQuotes(String uid) =>
      _firebaseProvider.fetchQuoteList(uid);
}
