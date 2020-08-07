// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quote_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$QuoteWatcherEventTearOff {
  const _$QuoteWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _QuotesReceived quotesReceived(
      Either<QuoteFailure, KtList<Quote>> failureOrQuotes) {
    return _QuotesReceived(
      failureOrQuotes,
    );
  }
}

// ignore: unused_element
const $QuoteWatcherEvent = _$QuoteWatcherEventTearOff();

mixin _$QuoteWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result quotesReceived(
            Either<QuoteFailure, KtList<Quote>> failureOrQuotes),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result quotesReceived(Either<QuoteFailure, KtList<Quote>> failureOrQuotes),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result quotesReceived(_QuotesReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result quotesReceived(_QuotesReceived value),
    @required Result orElse(),
  });
}

abstract class $QuoteWatcherEventCopyWith<$Res> {
  factory $QuoteWatcherEventCopyWith(
          QuoteWatcherEvent value, $Res Function(QuoteWatcherEvent) then) =
      _$QuoteWatcherEventCopyWithImpl<$Res>;
}

class _$QuoteWatcherEventCopyWithImpl<$Res>
    implements $QuoteWatcherEventCopyWith<$Res> {
  _$QuoteWatcherEventCopyWithImpl(this._value, this._then);

  final QuoteWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(QuoteWatcherEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$QuoteWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'QuoteWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result quotesReceived(
            Either<QuoteFailure, KtList<Quote>> failureOrQuotes),
  }) {
    assert(watchAllStarted != null);
    assert(quotesReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result quotesReceived(Either<QuoteFailure, KtList<Quote>> failureOrQuotes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result quotesReceived(_QuotesReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(quotesReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result quotesReceived(_QuotesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements QuoteWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

abstract class _$QuotesReceivedCopyWith<$Res> {
  factory _$QuotesReceivedCopyWith(
          _QuotesReceived value, $Res Function(_QuotesReceived) then) =
      __$QuotesReceivedCopyWithImpl<$Res>;
  $Res call({Either<QuoteFailure, KtList<Quote>> failureOrQuotes});
}

class __$QuotesReceivedCopyWithImpl<$Res>
    extends _$QuoteWatcherEventCopyWithImpl<$Res>
    implements _$QuotesReceivedCopyWith<$Res> {
  __$QuotesReceivedCopyWithImpl(
      _QuotesReceived _value, $Res Function(_QuotesReceived) _then)
      : super(_value, (v) => _then(v as _QuotesReceived));

  @override
  _QuotesReceived get _value => super._value as _QuotesReceived;

  @override
  $Res call({
    Object failureOrQuotes = freezed,
  }) {
    return _then(_QuotesReceived(
      failureOrQuotes == freezed
          ? _value.failureOrQuotes
          : failureOrQuotes as Either<QuoteFailure, KtList<Quote>>,
    ));
  }
}

class _$_QuotesReceived implements _QuotesReceived {
  const _$_QuotesReceived(this.failureOrQuotes)
      : assert(failureOrQuotes != null);

  @override
  final Either<QuoteFailure, KtList<Quote>> failureOrQuotes;

  @override
  String toString() {
    return 'QuoteWatcherEvent.quotesReceived(failureOrQuotes: $failureOrQuotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuotesReceived &&
            (identical(other.failureOrQuotes, failureOrQuotes) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrQuotes, failureOrQuotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrQuotes);

  @override
  _$QuotesReceivedCopyWith<_QuotesReceived> get copyWith =>
      __$QuotesReceivedCopyWithImpl<_QuotesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result quotesReceived(
            Either<QuoteFailure, KtList<Quote>> failureOrQuotes),
  }) {
    assert(watchAllStarted != null);
    assert(quotesReceived != null);
    return quotesReceived(failureOrQuotes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result quotesReceived(Either<QuoteFailure, KtList<Quote>> failureOrQuotes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (quotesReceived != null) {
      return quotesReceived(failureOrQuotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result quotesReceived(_QuotesReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(quotesReceived != null);
    return quotesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result quotesReceived(_QuotesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (quotesReceived != null) {
      return quotesReceived(this);
    }
    return orElse();
  }
}

abstract class _QuotesReceived implements QuoteWatcherEvent {
  const factory _QuotesReceived(
      Either<QuoteFailure, KtList<Quote>> failureOrQuotes) = _$_QuotesReceived;

  Either<QuoteFailure, KtList<Quote>> get failureOrQuotes;
  _$QuotesReceivedCopyWith<_QuotesReceived> get copyWith;
}

class _$QuoteWatcherStateTearOff {
  const _$QuoteWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadInSuccess loadSuccess(KtList<Quote> quotes) {
    return _LoadInSuccess(
      quotes,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(QuoteFailure quoteFailure) {
    return _LoadFailure(
      quoteFailure,
    );
  }
}

// ignore: unused_element
const $QuoteWatcherState = _$QuoteWatcherStateTearOff();

mixin _$QuoteWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Quote> quotes),
    @required Result loadFailure(QuoteFailure quoteFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Quote> quotes),
    Result loadFailure(QuoteFailure quoteFailure),
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

abstract class $QuoteWatcherStateCopyWith<$Res> {
  factory $QuoteWatcherStateCopyWith(
          QuoteWatcherState value, $Res Function(QuoteWatcherState) then) =
      _$QuoteWatcherStateCopyWithImpl<$Res>;
}

class _$QuoteWatcherStateCopyWithImpl<$Res>
    implements $QuoteWatcherStateCopyWith<$Res> {
  _$QuoteWatcherStateCopyWithImpl(this._value, this._then);

  final QuoteWatcherState _value;
  // ignore: unused_field
  final $Res Function(QuoteWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$QuoteWatcherStateCopyWithImpl<$Res>
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
    return 'QuoteWatcherState.initial()';
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
    @required Result loadSuccess(KtList<Quote> quotes),
    @required Result loadFailure(QuoteFailure quoteFailure),
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
    Result loadSuccess(KtList<Quote> quotes),
    Result loadFailure(QuoteFailure quoteFailure),
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

abstract class _Initial implements QuoteWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$QuoteWatcherStateCopyWithImpl<$Res>
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
    return 'QuoteWatcherState.loadInProgress()';
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
    @required Result loadSuccess(KtList<Quote> quotes),
    @required Result loadFailure(QuoteFailure quoteFailure),
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
    Result loadSuccess(KtList<Quote> quotes),
    Result loadFailure(QuoteFailure quoteFailure),
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

abstract class _LoadInProgress implements QuoteWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadInSuccessCopyWith<$Res> {
  factory _$LoadInSuccessCopyWith(
          _LoadInSuccess value, $Res Function(_LoadInSuccess) then) =
      __$LoadInSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Quote> quotes});
}

class __$LoadInSuccessCopyWithImpl<$Res>
    extends _$QuoteWatcherStateCopyWithImpl<$Res>
    implements _$LoadInSuccessCopyWith<$Res> {
  __$LoadInSuccessCopyWithImpl(
      _LoadInSuccess _value, $Res Function(_LoadInSuccess) _then)
      : super(_value, (v) => _then(v as _LoadInSuccess));

  @override
  _LoadInSuccess get _value => super._value as _LoadInSuccess;

  @override
  $Res call({
    Object quotes = freezed,
  }) {
    return _then(_LoadInSuccess(
      quotes == freezed ? _value.quotes : quotes as KtList<Quote>,
    ));
  }
}

class _$_LoadInSuccess implements _LoadInSuccess {
  const _$_LoadInSuccess(this.quotes) : assert(quotes != null);

  @override
  final KtList<Quote> quotes;

  @override
  String toString() {
    return 'QuoteWatcherState.loadSuccess(quotes: $quotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadInSuccess &&
            (identical(other.quotes, quotes) ||
                const DeepCollectionEquality().equals(other.quotes, quotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quotes);

  @override
  _$LoadInSuccessCopyWith<_LoadInSuccess> get copyWith =>
      __$LoadInSuccessCopyWithImpl<_LoadInSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Quote> quotes),
    @required Result loadFailure(QuoteFailure quoteFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(quotes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Quote> quotes),
    Result loadFailure(QuoteFailure quoteFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(quotes);
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

abstract class _LoadInSuccess implements QuoteWatcherState {
  const factory _LoadInSuccess(KtList<Quote> quotes) = _$_LoadInSuccess;

  KtList<Quote> get quotes;
  _$LoadInSuccessCopyWith<_LoadInSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({QuoteFailure quoteFailure});

  $QuoteFailureCopyWith<$Res> get quoteFailure;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$QuoteWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object quoteFailure = freezed,
  }) {
    return _then(_LoadFailure(
      quoteFailure == freezed
          ? _value.quoteFailure
          : quoteFailure as QuoteFailure,
    ));
  }

  @override
  $QuoteFailureCopyWith<$Res> get quoteFailure {
    if (_value.quoteFailure == null) {
      return null;
    }
    return $QuoteFailureCopyWith<$Res>(_value.quoteFailure, (value) {
      return _then(_value.copyWith(quoteFailure: value));
    });
  }
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.quoteFailure) : assert(quoteFailure != null);

  @override
  final QuoteFailure quoteFailure;

  @override
  String toString() {
    return 'QuoteWatcherState.loadFailure(quoteFailure: $quoteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.quoteFailure, quoteFailure) ||
                const DeepCollectionEquality()
                    .equals(other.quoteFailure, quoteFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quoteFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Quote> quotes),
    @required Result loadFailure(QuoteFailure quoteFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(quoteFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Quote> quotes),
    Result loadFailure(QuoteFailure quoteFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(quoteFailure);
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

abstract class _LoadFailure implements QuoteWatcherState {
  const factory _LoadFailure(QuoteFailure quoteFailure) = _$_LoadFailure;

  QuoteFailure get quoteFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
