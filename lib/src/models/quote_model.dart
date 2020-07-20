import 'package:firebase_database/firebase_database.dart';

class Quote {
  final String key;
  final String quote;
  final String book;

  Quote({this.key, this.quote, this.book});

  Map<String, dynamic> toMap() {
    return {
      'id': key,
      'quote': quote,
      'book': book,
    };
  }

  Quote.fromSnapshot(DataSnapshot snapshot)
    : key = snapshot.key,
      quote = snapshot.value['quote'],
      book = snapshot.value['book'];

  toJson() {
    return {
      'quote': quote,
      'book': book,
    };
  }
}
