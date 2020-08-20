// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchActorEventTearOff {
  const _$SearchActorEventTearOff();

// ignore: unused_element
  _ResultCounted resultCounted() {
    return const _ResultCounted();
  }
}

// ignore: unused_element
const $SearchActorEvent = _$SearchActorEventTearOff();

mixin _$SearchActorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result resultCounted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result resultCounted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result resultCounted(_ResultCounted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result resultCounted(_ResultCounted value),
    @required Result orElse(),
  });
}

abstract class $SearchActorEventCopyWith<$Res> {
  factory $SearchActorEventCopyWith(
          SearchActorEvent value, $Res Function(SearchActorEvent) then) =
      _$SearchActorEventCopyWithImpl<$Res>;
}

class _$SearchActorEventCopyWithImpl<$Res>
    implements $SearchActorEventCopyWith<$Res> {
  _$SearchActorEventCopyWithImpl(this._value, this._then);

  final SearchActorEvent _value;
  // ignore: unused_field
  final $Res Function(SearchActorEvent) _then;
}

abstract class _$ResultCountedCopyWith<$Res> {
  factory _$ResultCountedCopyWith(
          _ResultCounted value, $Res Function(_ResultCounted) then) =
      __$ResultCountedCopyWithImpl<$Res>;
}

class __$ResultCountedCopyWithImpl<$Res>
    extends _$SearchActorEventCopyWithImpl<$Res>
    implements _$ResultCountedCopyWith<$Res> {
  __$ResultCountedCopyWithImpl(
      _ResultCounted _value, $Res Function(_ResultCounted) _then)
      : super(_value, (v) => _then(v as _ResultCounted));

  @override
  _ResultCounted get _value => super._value as _ResultCounted;
}

class _$_ResultCounted implements _ResultCounted {
  const _$_ResultCounted();

  @override
  String toString() {
    return 'SearchActorEvent.resultCounted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResultCounted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result resultCounted(),
  }) {
    assert(resultCounted != null);
    return resultCounted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result resultCounted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resultCounted != null) {
      return resultCounted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result resultCounted(_ResultCounted value),
  }) {
    assert(resultCounted != null);
    return resultCounted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result resultCounted(_ResultCounted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resultCounted != null) {
      return resultCounted(this);
    }
    return orElse();
  }
}

abstract class _ResultCounted implements SearchActorEvent {
  const factory _ResultCounted() = _$_ResultCounted;
}

class _$SearchActorStateTearOff {
  const _$SearchActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _Loaded loaded() {
    return const _Loaded();
  }

// ignore: unused_element
  _TooManyResults tooManyResults() {
    return const _TooManyResults();
  }
}

// ignore: unused_element
const $SearchActorState = _$SearchActorStateTearOff();

mixin _$SearchActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result loaded(),
    @required Result tooManyResults(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result loaded(),
    Result tooManyResults(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result loaded(_Loaded value),
    @required Result tooManyResults(_TooManyResults value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result loaded(_Loaded value),
    Result tooManyResults(_TooManyResults value),
    @required Result orElse(),
  });
}

abstract class $SearchActorStateCopyWith<$Res> {
  factory $SearchActorStateCopyWith(
          SearchActorState value, $Res Function(SearchActorState) then) =
      _$SearchActorStateCopyWithImpl<$Res>;
}

class _$SearchActorStateCopyWithImpl<$Res>
    implements $SearchActorStateCopyWith<$Res> {
  _$SearchActorStateCopyWithImpl(this._value, this._then);

  final SearchActorState _value;
  // ignore: unused_field
  final $Res Function(SearchActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$SearchActorStateCopyWithImpl<$Res>
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
    return 'SearchActorState.initial()';
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
    @required Result actionInProgress(),
    @required Result loaded(),
    @required Result tooManyResults(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(loaded != null);
    assert(tooManyResults != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result loaded(),
    Result tooManyResults(),
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
    @required Result actionInProgress(_ActionInProgress value),
    @required Result loaded(_Loaded value),
    @required Result tooManyResults(_TooManyResults value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(loaded != null);
    assert(tooManyResults != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result loaded(_Loaded value),
    Result tooManyResults(_TooManyResults value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$SearchActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'SearchActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result loaded(),
    @required Result tooManyResults(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(loaded != null);
    assert(tooManyResults != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result loaded(),
    Result tooManyResults(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result loaded(_Loaded value),
    @required Result tooManyResults(_TooManyResults value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(loaded != null);
    assert(tooManyResults != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result loaded(_Loaded value),
    Result tooManyResults(_TooManyResults value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements SearchActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
}

class __$LoadedCopyWithImpl<$Res> extends _$SearchActorStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;
}

class _$_Loaded implements _Loaded {
  const _$_Loaded();

  @override
  String toString() {
    return 'SearchActorState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result loaded(),
    @required Result tooManyResults(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(loaded != null);
    assert(tooManyResults != null);
    return loaded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result loaded(),
    Result tooManyResults(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result loaded(_Loaded value),
    @required Result tooManyResults(_TooManyResults value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(loaded != null);
    assert(tooManyResults != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result loaded(_Loaded value),
    Result tooManyResults(_TooManyResults value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SearchActorState {
  const factory _Loaded() = _$_Loaded;
}

abstract class _$TooManyResultsCopyWith<$Res> {
  factory _$TooManyResultsCopyWith(
          _TooManyResults value, $Res Function(_TooManyResults) then) =
      __$TooManyResultsCopyWithImpl<$Res>;
}

class __$TooManyResultsCopyWithImpl<$Res>
    extends _$SearchActorStateCopyWithImpl<$Res>
    implements _$TooManyResultsCopyWith<$Res> {
  __$TooManyResultsCopyWithImpl(
      _TooManyResults _value, $Res Function(_TooManyResults) _then)
      : super(_value, (v) => _then(v as _TooManyResults));

  @override
  _TooManyResults get _value => super._value as _TooManyResults;
}

class _$_TooManyResults implements _TooManyResults {
  const _$_TooManyResults();

  @override
  String toString() {
    return 'SearchActorState.tooManyResults()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TooManyResults);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result loaded(),
    @required Result tooManyResults(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(loaded != null);
    assert(tooManyResults != null);
    return tooManyResults();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result loaded(),
    Result tooManyResults(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tooManyResults != null) {
      return tooManyResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result loaded(_Loaded value),
    @required Result tooManyResults(_TooManyResults value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(loaded != null);
    assert(tooManyResults != null);
    return tooManyResults(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result loaded(_Loaded value),
    Result tooManyResults(_TooManyResults value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tooManyResults != null) {
      return tooManyResults(this);
    }
    return orElse();
  }
}

abstract class _TooManyResults implements SearchActorState {
  const factory _TooManyResults() = _$_TooManyResults;
}
