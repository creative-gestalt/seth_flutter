import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:seth_flutter/domain/search/i_search_repository.dart';
import 'package:seth_flutter/domain/search/search.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seth_flutter/domain/search/search_failure.dart';
import 'package:seth_flutter/domain/search/value_objects.dart';

part 'search_watcher_event.dart';
part 'search_watcher_state.dart';
part 'search_watcher_bloc.freezed.dart';

@injectable
class SearchWatcherBloc extends Bloc<SearchWatcherEvent, SearchWatcherState> {
  final ISearchRepository _searchRepository;

  SearchWatcherBloc(this._searchRepository) : super(const SearchWatcherState.initial());

  @override
  Stream<SearchWatcherState> mapEventToState(
    SearchWatcherEvent event,
  ) async* {
    yield* event.map(
      searchStarted: (e) async* {
        yield const SearchWatcherState.loadInProgress();
        _searchRepository.fetchResults(search: e.searchInput).then((searchOrFailure) =>
        add(SearchWatcherEvent.searchReceived(searchOrFailure)));
      },
      searchReceived: (e) async* {
        yield e.failureOrSearch.fold(
            (f) => SearchWatcherState.loadFailure(f),
            (searchItems) => SearchWatcherState.loadSuccess(searchItems),
        );
      },
    );
  }
}
