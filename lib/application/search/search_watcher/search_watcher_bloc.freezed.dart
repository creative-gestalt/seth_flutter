// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchWatcherEventTearOff {
  const _$SearchWatcherEventTearOff();

// ignore: unused_element
  _GetAllStarted getAllStarted(SearchInput search) {
    return _GetAllStarted(
      search,
    );
  }

// ignore: unused_element
  _SearchReceived searchReceived(
      Either<SearchFailure, KtList<Search>> failureOrSearch) {
    return _SearchReceived(
      failureOrSearch,
    );
  }
}

// ignore: unused_element
const $SearchWatcherEvent = _$SearchWatcherEventTearOff();

mixin _$SearchWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllStarted(SearchInput search),
    @required
        Result searchReceived(
            Either<SearchFailure, KtList<Search>> failureOrSearch),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllStarted(SearchInput search),
    Result searchReceived(
        Either<SearchFailure, KtList<Search>> failureOrSearch),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllStarted(_GetAllStarted value),
    @required Result searchReceived(_SearchReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllStarted(_GetAllStarted value),
    Result searchReceived(_SearchReceived value),
    @required Result orElse(),
  });
}

abstract class $SearchWatcherEventCopyWith<$Res> {
  factory $SearchWatcherEventCopyWith(
          SearchWatcherEvent value, $Res Function(SearchWatcherEvent) then) =
      _$SearchWatcherEventCopyWithImpl<$Res>;
}

class _$SearchWatcherEventCopyWithImpl<$Res>
    implements $SearchWatcherEventCopyWith<$Res> {
  _$SearchWatcherEventCopyWithImpl(this._value, this._then);

  final SearchWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(SearchWatcherEvent) _then;
}

abstract class _$GetAllStartedCopyWith<$Res> {
  factory _$GetAllStartedCopyWith(
          _GetAllStarted value, $Res Function(_GetAllStarted) then) =
      __$GetAllStartedCopyWithImpl<$Res>;
  $Res call({SearchInput search});
}

class __$GetAllStartedCopyWithImpl<$Res>
    extends _$SearchWatcherEventCopyWithImpl<$Res>
    implements _$GetAllStartedCopyWith<$Res> {
  __$GetAllStartedCopyWithImpl(
      _GetAllStarted _value, $Res Function(_GetAllStarted) _then)
      : super(_value, (v) => _then(v as _GetAllStarted));

  @override
  _GetAllStarted get _value => super._value as _GetAllStarted;

  @override
  $Res call({
    Object search = freezed,
  }) {
    return _then(_GetAllStarted(
      search == freezed ? _value.search : search as SearchInput,
    ));
  }
}

class _$_GetAllStarted implements _GetAllStarted {
  const _$_GetAllStarted(this.search) : assert(search != null);

  @override
  final SearchInput search;

  @override
  String toString() {
    return 'SearchWatcherEvent.getAllStarted(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllStarted &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(search);

  @override
  _$GetAllStartedCopyWith<_GetAllStarted> get copyWith =>
      __$GetAllStartedCopyWithImpl<_GetAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllStarted(SearchInput search),
    @required
        Result searchReceived(
            Either<SearchFailure, KtList<Search>> failureOrSearch),
  }) {
    assert(getAllStarted != null);
    assert(searchReceived != null);
    return getAllStarted(search);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllStarted(SearchInput search),
    Result searchReceived(
        Either<SearchFailure, KtList<Search>> failureOrSearch),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllStarted != null) {
      return getAllStarted(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllStarted(_GetAllStarted value),
    @required Result searchReceived(_SearchReceived value),
  }) {
    assert(getAllStarted != null);
    assert(searchReceived != null);
    return getAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllStarted(_GetAllStarted value),
    Result searchReceived(_SearchReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllStarted != null) {
      return getAllStarted(this);
    }
    return orElse();
  }
}

abstract class _GetAllStarted implements SearchWatcherEvent {
  const factory _GetAllStarted(SearchInput search) = _$_GetAllStarted;

  SearchInput get search;
  _$GetAllStartedCopyWith<_GetAllStarted> get copyWith;
}

abstract class _$SearchReceivedCopyWith<$Res> {
  factory _$SearchReceivedCopyWith(
          _SearchReceived value, $Res Function(_SearchReceived) then) =
      __$SearchReceivedCopyWithImpl<$Res>;
  $Res call({Either<SearchFailure, KtList<Search>> failureOrSearch});
}

class __$SearchReceivedCopyWithImpl<$Res>
    extends _$SearchWatcherEventCopyWithImpl<$Res>
    implements _$SearchReceivedCopyWith<$Res> {
  __$SearchReceivedCopyWithImpl(
      _SearchReceived _value, $Res Function(_SearchReceived) _then)
      : super(_value, (v) => _then(v as _SearchReceived));

  @override
  _SearchReceived get _value => super._value as _SearchReceived;

  @override
  $Res call({
    Object failureOrSearch = freezed,
  }) {
    return _then(_SearchReceived(
      failureOrSearch == freezed
          ? _value.failureOrSearch
          : failureOrSearch as Either<SearchFailure, KtList<Search>>,
    ));
  }
}

class _$_SearchReceived implements _SearchReceived {
  const _$_SearchReceived(this.failureOrSearch)
      : assert(failureOrSearch != null);

  @override
  final Either<SearchFailure, KtList<Search>> failureOrSearch;

  @override
  String toString() {
    return 'SearchWatcherEvent.searchReceived(failureOrSearch: $failureOrSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchReceived &&
            (identical(other.failureOrSearch, failureOrSearch) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSearch, failureOrSearch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrSearch);

  @override
  _$SearchReceivedCopyWith<_SearchReceived> get copyWith =>
      __$SearchReceivedCopyWithImpl<_SearchReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllStarted(SearchInput search),
    @required
        Result searchReceived(
            Either<SearchFailure, KtList<Search>> failureOrSearch),
  }) {
    assert(getAllStarted != null);
    assert(searchReceived != null);
    return searchReceived(failureOrSearch);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllStarted(SearchInput search),
    Result searchReceived(
        Either<SearchFailure, KtList<Search>> failureOrSearch),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchReceived != null) {
      return searchReceived(failureOrSearch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllStarted(_GetAllStarted value),
    @required Result searchReceived(_SearchReceived value),
  }) {
    assert(getAllStarted != null);
    assert(searchReceived != null);
    return searchReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllStarted(_GetAllStarted value),
    Result searchReceived(_SearchReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchReceived != null) {
      return searchReceived(this);
    }
    return orElse();
  }
}

abstract class _SearchReceived implements SearchWatcherEvent {
  const factory _SearchReceived(
          Either<SearchFailure, KtList<Search>> failureOrSearch) =
      _$_SearchReceived;

  Either<SearchFailure, KtList<Search>> get failureOrSearch;
  _$SearchReceivedCopyWith<_SearchReceived> get copyWith;
}

class _$SearchWatcherStateTearOff {
  const _$SearchWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadInSuccess loadSuccess(KtList<Search> searchItems) {
    return _LoadInSuccess(
      searchItems,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(SearchFailure searchFailure) {
    return _LoadFailure(
      searchFailure,
    );
  }
}

// ignore: unused_element
const $SearchWatcherState = _$SearchWatcherStateTearOff();

mixin _$SearchWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Search> searchItems),
    @required Result loadFailure(SearchFailure searchFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Search> searchItems),
    Result loadFailure(SearchFailure searchFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadInSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadInSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $SearchWatcherStateCopyWith<$Res> {
  factory $SearchWatcherStateCopyWith(
          SearchWatcherState value, $Res Function(SearchWatcherState) then) =
      _$SearchWatcherStateCopyWithImpl<$Res>;
}

class _$SearchWatcherStateCopyWithImpl<$Res>
    implements $SearchWatcherStateCopyWith<$Res> {
  _$SearchWatcherStateCopyWithImpl(this._value, this._then);

  final SearchWatcherState _value;
  // ignore: unused_field
  final $Res Function(SearchWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$SearchWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SearchWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Search> searchItems),
    @required Result loadFailure(SearchFailure searchFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Search> searchItems),
    Result loadFailure(SearchFailure searchFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadInSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadInSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$SearchWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'SearchWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Search> searchItems),
    @required Result loadFailure(SearchFailure searchFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Search> searchItems),
    Result loadFailure(SearchFailure searchFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadInSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadInSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements SearchWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadInSuccessCopyWith<$Res> {
  factory _$LoadInSuccessCopyWith(
          _LoadInSuccess value, $Res Function(_LoadInSuccess) then) =
      __$LoadInSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Search> searchItems});
}

class __$LoadInSuccessCopyWithImpl<$Res>
    extends _$SearchWatcherStateCopyWithImpl<$Res>
    implements _$LoadInSuccessCopyWith<$Res> {
  __$LoadInSuccessCopyWithImpl(
      _LoadInSuccess _value, $Res Function(_LoadInSuccess) _then)
      : super(_value, (v) => _then(v as _LoadInSuccess));

  @override
  _LoadInSuccess get _value => super._value as _LoadInSuccess;

  @override
  $Res call({
    Object searchItems = freezed,
  }) {
    return _then(_LoadInSuccess(
      searchItems == freezed
          ? _value.searchItems
          : searchItems as KtList<Search>,
    ));
  }
}

class _$_LoadInSuccess implements _LoadInSuccess {
  const _$_LoadInSuccess(this.searchItems) : assert(searchItems != null);

  @override
  final KtList<Search> searchItems;

  @override
  String toString() {
    return 'SearchWatcherState.loadSuccess(searchItems: $searchItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadInSuccess &&
            (identical(other.searchItems, searchItems) ||
                const DeepCollectionEquality()
                    .equals(other.searchItems, searchItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchItems);

  @override
  _$LoadInSuccessCopyWith<_LoadInSuccess> get copyWith =>
      __$LoadInSuccessCopyWithImpl<_LoadInSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Search> searchItems),
    @required Result loadFailure(SearchFailure searchFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(searchItems);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Search> searchItems),
    Result loadFailure(SearchFailure searchFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(searchItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadInSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadInSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadInSuccess implements SearchWatcherState {
  const factory _LoadInSuccess(KtList<Search> searchItems) = _$_LoadInSuccess;

  KtList<Search> get searchItems;
  _$LoadInSuccessCopyWith<_LoadInSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({SearchFailure searchFailure});

  $SearchFailureCopyWith<$Res> get searchFailure;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$SearchWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object searchFailure = freezed,
  }) {
    return _then(_LoadFailure(
      searchFailure == freezed
          ? _value.searchFailure
          : searchFailure as SearchFailure,
    ));
  }

  @override
  $SearchFailureCopyWith<$Res> get searchFailure {
    if (_value.searchFailure == null) {
      return null;
    }
    return $SearchFailureCopyWith<$Res>(_value.searchFailure, (value) {
      return _then(_value.copyWith(searchFailure: value));
    });
  }
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.searchFailure) : assert(searchFailure != null);

  @override
  final SearchFailure searchFailure;

  @override
  String toString() {
    return 'SearchWatcherState.loadFailure(searchFailure: $searchFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.searchFailure, searchFailure) ||
                const DeepCollectionEquality()
                    .equals(other.searchFailure, searchFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Search> searchItems),
    @required Result loadFailure(SearchFailure searchFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(searchFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Search> searchItems),
    Result loadFailure(SearchFailure searchFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(searchFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadInSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadInSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements SearchWatcherState {
  const factory _LoadFailure(SearchFailure searchFailure) = _$_LoadFailure;

  SearchFailure get searchFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
