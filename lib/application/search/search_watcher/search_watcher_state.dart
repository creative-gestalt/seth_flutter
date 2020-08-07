part of 'search_watcher_bloc.dart';

@freezed
abstract class SearchWatcherState with _$SearchWatcherState {
    const factory SearchWatcherState.initial() = _Initial;
    const factory SearchWatcherState.loadInProgress() = _LoadInProgress;
    const factory SearchWatcherState.loadSuccess(KtList<Search> searchItems) =
    _LoadInSuccess;
    const factory SearchWatcherState.loadFailure(SearchFailure searchFailure) =
    _LoadFailure;
}
