part of 'quote_watcher_bloc.dart';

@freezed
abstract class QuoteWatcherState with _$QuoteWatcherState {
  const factory QuoteWatcherState.initial() = _Initial;
  const factory QuoteWatcherState.loadInProgress() = _LoadInProgress;
  const factory QuoteWatcherState.loadSuccess(KtList<Quote> quotes) =
      _LoadInSuccess;
  const factory QuoteWatcherState.loadFailure(QuoteFailure quoteFailure) =
      _LoadFailure;
}
