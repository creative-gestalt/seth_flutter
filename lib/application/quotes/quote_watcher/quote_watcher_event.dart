part of 'quote_watcher_bloc.dart';

@freezed
abstract class QuoteWatcherEvent with _$QuoteWatcherEvent {
    const factory QuoteWatcherEvent.watchAllStarted() = _WatchAllStarted;
    const factory QuoteWatcherEvent.quotesReceived(
        Either<QuoteFailure, KtList<Quote>> failureOrQuotes,
        ) = _QuotesReceived;
}
