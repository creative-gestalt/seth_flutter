import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:seth_flutter/src/models/quote.dart';
import 'package:seth_flutter/src/utils/quote_repository.dart';

part 'quote_event.dart';
part 'quote_state.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  final QuoteRepository quoteRepository;

  QuoteBloc(this.quoteRepository) : super(QuoteInitial());

  QuoteState get initialState => QuoteInitial();

  @override
  Stream<QuoteState> mapEventToState(
    QuoteEvent event,
  ) async* {
    yield QuoteLoading();
    if (event is GetQuotes) {
      try {
        final quotes = await quoteRepository.fetchQuotes(event.uid);
        yield QuoteLoaded(quotes);
      } on NetworkError {
        yield QuoteError('FUCK');
      }
    }
  }
}
