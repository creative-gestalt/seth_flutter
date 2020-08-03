import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:seth_flutter/domain/quotes/i_quotes_repository.dart';
import 'package:seth_flutter/domain/quotes/quote.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seth_flutter/domain/quotes/quote_failure.dart';

part 'quote_watcher_event.dart';
part 'quote_watcher_state.dart';
part 'quote_watcher_bloc.freezed.dart';

@injectable
class QuoteWatcherBloc extends Bloc<QuoteWatcherEvent, QuoteWatcherState> {
  final IQuoteRepository _quoteRepository;

  StreamSubscription<Either<QuoteFailure, KtList<Quote>>> _quoteStreamSubscription;

  QuoteWatcherBloc(this._quoteRepository)
      : super(const QuoteWatcherState.initial());


  @override
  Stream<QuoteWatcherState> mapEventToState(
    QuoteWatcherEvent event,
  ) async* {
    yield* event.map(watchAllStarted: (e) async* {
      yield const QuoteWatcherState.loadInProgress();
      await _quoteStreamSubscription?.cancel();
      _quoteStreamSubscription = _quoteRepository.watchAll().listen((failureOrQuotes) =>
          add(QuoteWatcherEvent.quotesReceived(failureOrQuotes)));
    }, quotesReceived: (e) async* {
      yield e.failureOrQuotes.fold(
        (f) => QuoteWatcherState.loadFailure(f),
        (quotes) => QuoteWatcherState.loadSuccess(quotes),
      );
    });
  }

  @override
  Future<void> close() async {
    await _quoteStreamSubscription?.cancel();
    return super.close();
  }
}
