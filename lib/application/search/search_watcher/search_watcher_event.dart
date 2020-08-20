part of 'search_watcher_bloc.dart';

@freezed
abstract class SearchWatcherEvent with _$SearchWatcherEvent {
    const factory SearchWatcherEvent.searchStarted(SearchInput searchInput) = _SearchStarted;
    const factory SearchWatcherEvent.searchReceived(Either<SearchFailure, KtList<Search>> failureOrSearch) = _SearchReceived;
}
