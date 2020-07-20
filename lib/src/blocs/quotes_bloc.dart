import 'package:rxdart/rxdart.dart';
import 'package:seth_flutter/src/blocprovs/repository.dart';
import 'package:seth_flutter/src/models/quote_model.dart';

class QuotesBloc {
  final _repository = Repository();
  final _quoteFetcher = PublishSubject<Quote>();

  Stream<Quote> get allQuotes => _quoteFetcher.stream;

  fetchAllQuotes(uid) async {
    Quote quote = _repository.fetchAllQuotes(uid) as Quote;
    _quoteFetcher.sink.add(quote);
  }

  dispose() {
    _quoteFetcher.close();
  }
}

final bloc = QuotesBloc();
