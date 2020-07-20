import 'package:firebase_database/firebase_database.dart';
import 'package:seth_flutter/src/models/quote.dart';

abstract class QuoteRepository {
  Future<Quote> fetchQuotes(String uid);
}

class FirebaseQuoteRepository implements QuoteRepository {
  final dbRef = FirebaseDatabase.instance.reference().child('saved_quotes');
  var allQuotes = List();

  @override
  Future<Quote> fetchQuotes(String uid) async {
    allQuotes.clear();
    var quoteQuery = await dbRef.orderByKey().equalTo(uid).once().then((value) => value.value);
    Map<dynamic, dynamic> values = quoteQuery;
    if (values != null) {
      values.forEach((key, value) => allQuotes.add(values[uid]));
      allQuotes = allQuotes.expand((element) => element).toList();
      return Quote(
        uid: uid,
        quotes: allQuotes,
      );
    } else {
      return Quote(
        uid: uid,
        quotes: [],
      );
    }
  }
}

class NetworkError extends Error {}
