// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exercise_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseWatcherEventTearOff {
  const _$ExerciseWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _WatchFavoriteStarted watchFavoriteStarted() {
    return const _WatchFavoriteStarted();
  }

// ignore: unused_element
  _ExercisesReceived exercisesReceived(List<Exercise> exercises) {
    return _ExercisesReceived(
      exercises,
    );
  }
}

// ignore: unused_element
const $ExerciseWatcherEvent = _$ExerciseWatcherEventTearOff();

mixin _$ExerciseWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchFavoriteStarted(),
    @required Result exercisesReceived(List<Exercise> exercises),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchFavoriteStarted(),
    Result exercisesReceived(List<Exercise> exercises),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchFavoriteStarted(_WatchFavoriteStarted value),
    @required Result exercisesReceived(_ExercisesReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchFavoriteStarted(_WatchFavoriteStarted value),
    Result exercisesReceived(_ExercisesReceived value),
    @required Result orElse(),
  });
}

abstract class $ExerciseWatcherEventCopyWith<$Res> {
  factory $ExerciseWatcherEventCopyWith(ExerciseWatcherEvent value,
          $Res Function(ExerciseWatcherEvent) then) =
      _$ExerciseWatcherEventCopyWithImpl<$Res>;
}

class _$ExerciseWatcherEventCopyWithImpl<$Res>
    implements $ExerciseWatcherEventCopyWith<$Res> {
  _$ExerciseWatcherEventCopyWithImpl(this._value, this._then);

  final ExerciseWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ExerciseWatcherEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$ExerciseWatcherEventCopyWithImpl<$Res>
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
    return 'ExerciseWatcherEvent.watchAllStarted()';
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
    @required Result watchFavoriteStarted(),
    @required Result exercisesReceived(List<Exercise> exercises),
  }) {
    assert(watchAllStarted != null);
    assert(watchFavoriteStarted != null);
    assert(exercisesReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchFavoriteStarted(),
    Result exercisesReceived(List<Exercise> exercises),
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
    @required Result watchFavoriteStarted(_WatchFavoriteStarted value),
    @required Result exercisesReceived(_ExercisesReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchFavoriteStarted != null);
    assert(exercisesReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchFavoriteStarted(_WatchFavoriteStarted value),
    Result exercisesReceived(_ExercisesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ExerciseWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

abstract class _$WatchFavoriteStartedCopyWith<$Res> {
  factory _$WatchFavoriteStartedCopyWith(_WatchFavoriteStarted value,
          $Res Function(_WatchFavoriteStarted) then) =
      __$WatchFavoriteStartedCopyWithImpl<$Res>;
}

class __$WatchFavoriteStartedCopyWithImpl<$Res>
    extends _$ExerciseWatcherEventCopyWithImpl<$Res>
    implements _$WatchFavoriteStartedCopyWith<$Res> {
  __$WatchFavoriteStartedCopyWithImpl(
      _WatchFavoriteStarted _value, $Res Function(_WatchFavoriteStarted) _then)
      : super(_value, (v) => _then(v as _WatchFavoriteStarted));

  @override
  _WatchFavoriteStarted get _value => super._value as _WatchFavoriteStarted;
}

class _$_WatchFavoriteStarted implements _WatchFavoriteStarted {
  const _$_WatchFavoriteStarted();

  @override
  String toString() {
    return 'ExerciseWatcherEvent.watchFavoriteStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchFavoriteStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchFavoriteStarted(),
    @required Result exercisesReceived(List<Exercise> exercises),
  }) {
    assert(watchAllStarted != null);
    assert(watchFavoriteStarted != null);
    assert(exercisesReceived != null);
    return watchFavoriteStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchFavoriteStarted(),
    Result exercisesReceived(List<Exercise> exercises),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFavoriteStarted != null) {
      return watchFavoriteStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchFavoriteStarted(_WatchFavoriteStarted value),
    @required Result exercisesReceived(_ExercisesReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchFavoriteStarted != null);
    assert(exercisesReceived != null);
    return watchFavoriteStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchFavoriteStarted(_WatchFavoriteStarted value),
    Result exercisesReceived(_ExercisesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFavoriteStarted != null) {
      return watchFavoriteStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchFavoriteStarted implements ExerciseWatcherEvent {
  const factory _WatchFavoriteStarted() = _$_WatchFavoriteStarted;
}

abstract class _$ExercisesReceivedCopyWith<$Res> {
  factory _$ExercisesReceivedCopyWith(
          _ExercisesReceived value, $Res Function(_ExercisesReceived) then) =
      __$ExercisesReceivedCopyWithImpl<$Res>;
  $Res call({List<Exercise> exercises});
}

class __$ExercisesReceivedCopyWithImpl<$Res>
    extends _$ExerciseWatcherEventCopyWithImpl<$Res>
    implements _$ExercisesReceivedCopyWith<$Res> {
  __$ExercisesReceivedCopyWithImpl(
      _ExercisesReceived _value, $Res Function(_ExercisesReceived) _then)
      : super(_value, (v) => _then(v as _ExercisesReceived));

  @override
  _ExercisesReceived get _value => super._value as _ExercisesReceived;

  @override
  $Res call({
    Object exercises = freezed,
  }) {
    return _then(_ExercisesReceived(
      exercises == freezed ? _value.exercises : exercises as List<Exercise>,
    ));
  }
}

class _$_ExercisesReceived implements _ExercisesReceived {
  const _$_ExercisesReceived(this.exercises) : assert(exercises != null);

  @override
  final List<Exercise> exercises;

  @override
  String toString() {
    return 'ExerciseWatcherEvent.exercisesReceived(exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExercisesReceived &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercises);

  @override
  _$ExercisesReceivedCopyWith<_ExercisesReceived> get copyWith =>
      __$ExercisesReceivedCopyWithImpl<_ExercisesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchFavoriteStarted(),
    @required Result exercisesReceived(List<Exercise> exercises),
  }) {
    assert(watchAllStarted != null);
    assert(watchFavoriteStarted != null);
    assert(exercisesReceived != null);
    return exercisesReceived(exercises);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchFavoriteStarted(),
    Result exercisesReceived(List<Exercise> exercises),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exercisesReceived != null) {
      return exercisesReceived(exercises);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchFavoriteStarted(_WatchFavoriteStarted value),
    @required Result exercisesReceived(_ExercisesReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchFavoriteStarted != null);
    assert(exercisesReceived != null);
    return exercisesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchFavoriteStarted(_WatchFavoriteStarted value),
    Result exercisesReceived(_ExercisesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exercisesReceived != null) {
      return exercisesReceived(this);
    }
    return orElse();
  }
}

abstract class _ExercisesReceived implements ExerciseWatcherEvent {
  const factory _ExercisesReceived(List<Exercise> exercises) =
      _$_ExercisesReceived;

  List<Exercise> get exercises;
  _$ExercisesReceivedCopyWith<_ExercisesReceived> get copyWith;
}

class _$ExerciseWatcherStateTearOff {
  const _$ExerciseWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<Exercise> exercises) {
    return _LoadSuccess(
      exercises,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(ExerciseFailure exerciseFailure) {
    return _LoadFailure(
      exerciseFailure,
    );
  }
}

// ignore: unused_element
const $ExerciseWatcherState = _$ExerciseWatcherStateTearOff();

mixin _$ExerciseWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Exercise> exercises),
    @required Result loadFailure(ExerciseFailure exerciseFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Exercise> exercises),
    Result loadFailure(ExerciseFailure exerciseFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $ExerciseWatcherStateCopyWith<$Res> {
  factory $ExerciseWatcherStateCopyWith(ExerciseWatcherState value,
          $Res Function(ExerciseWatcherState) then) =
      _$ExerciseWatcherStateCopyWithImpl<$Res>;
}

class _$ExerciseWatcherStateCopyWithImpl<$Res>
    implements $ExerciseWatcherStateCopyWith<$Res> {
  _$ExerciseWatcherStateCopyWithImpl(this._value, this._then);

  final ExerciseWatcherState _value;
  // ignore: unused_field
  final $Res Function(ExerciseWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$ExerciseWatcherStateCopyWithImpl<$Res>
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
    return 'ExerciseWatcherState.initial()';
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
    @required Result loadSuccess(List<Exercise> exercises),
    @required Result loadFailure(ExerciseFailure exerciseFailure),
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
    Result loadSuccess(List<Exercise> exercises),
    Result loadFailure(ExerciseFailure exerciseFailure),
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
    @required Result loadSuccess(_LoadSuccess value),
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
    Result loadSuccess(_LoadSuccess value),
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

abstract class _Initial implements ExerciseWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ExerciseWatcherStateCopyWithImpl<$Res>
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
    return 'ExerciseWatcherState.loadInProgress()';
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
    @required Result loadSuccess(List<Exercise> exercises),
    @required Result loadFailure(ExerciseFailure exerciseFailure),
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
    Result loadSuccess(List<Exercise> exercises),
    Result loadFailure(ExerciseFailure exerciseFailure),
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
    @required Result loadSuccess(_LoadSuccess value),
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
    Result loadSuccess(_LoadSuccess value),
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

abstract class _LoadInProgress implements ExerciseWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Exercise> exercises});
}

class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ExerciseWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object exercises = freezed,
  }) {
    return _then(_LoadSuccess(
      exercises == freezed ? _value.exercises : exercises as List<Exercise>,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.exercises) : assert(exercises != null);

  @override
  final List<Exercise> exercises;

  @override
  String toString() {
    return 'ExerciseWatcherState.loadSuccess(exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercises);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Exercise> exercises),
    @required Result loadFailure(ExerciseFailure exerciseFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(exercises);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Exercise> exercises),
    Result loadFailure(ExerciseFailure exerciseFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(exercises);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
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
    Result loadSuccess(_LoadSuccess value),
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

abstract class _LoadSuccess implements ExerciseWatcherState {
  const factory _LoadSuccess(List<Exercise> exercises) = _$_LoadSuccess;

  List<Exercise> get exercises;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ExerciseFailure exerciseFailure});

  $ExerciseFailureCopyWith<$Res> get exerciseFailure;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$ExerciseWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object exerciseFailure = freezed,
  }) {
    return _then(_LoadFailure(
      exerciseFailure == freezed
          ? _value.exerciseFailure
          : exerciseFailure as ExerciseFailure,
    ));
  }

  @override
  $ExerciseFailureCopyWith<$Res> get exerciseFailure {
    if (_value.exerciseFailure == null) {
      return null;
    }
    return $ExerciseFailureCopyWith<$Res>(_value.exerciseFailure, (value) {
      return _then(_value.copyWith(exerciseFailure: value));
    });
  }
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.exerciseFailure) : assert(exerciseFailure != null);

  @override
  final ExerciseFailure exerciseFailure;

  @override
  String toString() {
    return 'ExerciseWatcherState.loadFailure(exerciseFailure: $exerciseFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.exerciseFailure, exerciseFailure) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseFailure, exerciseFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Exercise> exercises),
    @required Result loadFailure(ExerciseFailure exerciseFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(exerciseFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Exercise> exercises),
    Result loadFailure(ExerciseFailure exerciseFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(exerciseFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
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
    Result loadSuccess(_LoadSuccess value),
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

abstract class _LoadFailure implements ExerciseWatcherState {
  const factory _LoadFailure(ExerciseFailure exerciseFailure) = _$_LoadFailure;

  ExerciseFailure get exerciseFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
