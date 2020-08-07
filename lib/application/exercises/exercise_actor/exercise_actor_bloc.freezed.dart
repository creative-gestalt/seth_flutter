// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exercise_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseActorEventTearOff {
  const _$ExerciseActorEventTearOff();

// ignore: unused_element
  _Updated updated(Exercise exercise) {
    return _Updated(
      exercise,
    );
  }
}

// ignore: unused_element
const $ExerciseActorEvent = _$ExerciseActorEventTearOff();

mixin _$ExerciseActorEvent {
  Exercise get exercise;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updated(Exercise exercise),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updated(Exercise exercise),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updated(_Updated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updated(_Updated value),
    @required Result orElse(),
  });

  $ExerciseActorEventCopyWith<ExerciseActorEvent> get copyWith;
}

abstract class $ExerciseActorEventCopyWith<$Res> {
  factory $ExerciseActorEventCopyWith(
          ExerciseActorEvent value, $Res Function(ExerciseActorEvent) then) =
      _$ExerciseActorEventCopyWithImpl<$Res>;
  $Res call({Exercise exercise});
}

class _$ExerciseActorEventCopyWithImpl<$Res>
    implements $ExerciseActorEventCopyWith<$Res> {
  _$ExerciseActorEventCopyWithImpl(this._value, this._then);

  final ExerciseActorEvent _value;
  // ignore: unused_field
  final $Res Function(ExerciseActorEvent) _then;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(_value.copyWith(
      exercise: exercise == freezed ? _value.exercise : exercise as Exercise,
    ));
  }
}

abstract class _$UpdatedCopyWith<$Res>
    implements $ExerciseActorEventCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) then) =
      __$UpdatedCopyWithImpl<$Res>;
  @override
  $Res call({Exercise exercise});
}

class __$UpdatedCopyWithImpl<$Res>
    extends _$ExerciseActorEventCopyWithImpl<$Res>
    implements _$UpdatedCopyWith<$Res> {
  __$UpdatedCopyWithImpl(_Updated _value, $Res Function(_Updated) _then)
      : super(_value, (v) => _then(v as _Updated));

  @override
  _Updated get _value => super._value as _Updated;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(_Updated(
      exercise == freezed ? _value.exercise : exercise as Exercise,
    ));
  }
}

class _$_Updated implements _Updated {
  const _$_Updated(this.exercise) : assert(exercise != null);

  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'ExerciseActorEvent.updated(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Updated &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$UpdatedCopyWith<_Updated> get copyWith =>
      __$UpdatedCopyWithImpl<_Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updated(Exercise exercise),
  }) {
    assert(updated != null);
    return updated(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updated(Exercise exercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updated(_Updated value),
  }) {
    assert(updated != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updated(_Updated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements ExerciseActorEvent {
  const factory _Updated(Exercise exercise) = _$_Updated;

  @override
  Exercise get exercise;
  @override
  _$UpdatedCopyWith<_Updated> get copyWith;
}

class _$ExerciseActorStateTearOff {
  const _$ExerciseActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _AddedSuccess addedSuccess() {
    return const _AddedSuccess();
  }

// ignore: unused_element
  _RemovedSuccess removedSuccess() {
    return const _RemovedSuccess();
  }

// ignore: unused_element
  _UpdateFailure updateFailure(ExerciseFailure exerciseFailure) {
    return _UpdateFailure(
      exerciseFailure,
    );
  }
}

// ignore: unused_element
const $ExerciseActorState = _$ExerciseActorStateTearOff();

mixin _$ExerciseActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result addedSuccess(),
    @required Result removedSuccess(),
    @required Result updateFailure(ExerciseFailure exerciseFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result addedSuccess(),
    Result removedSuccess(),
    Result updateFailure(ExerciseFailure exerciseFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result addedSuccess(_AddedSuccess value),
    @required Result removedSuccess(_RemovedSuccess value),
    @required Result updateFailure(_UpdateFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result addedSuccess(_AddedSuccess value),
    Result removedSuccess(_RemovedSuccess value),
    Result updateFailure(_UpdateFailure value),
    @required Result orElse(),
  });
}

abstract class $ExerciseActorStateCopyWith<$Res> {
  factory $ExerciseActorStateCopyWith(
          ExerciseActorState value, $Res Function(ExerciseActorState) then) =
      _$ExerciseActorStateCopyWithImpl<$Res>;
}

class _$ExerciseActorStateCopyWithImpl<$Res>
    implements $ExerciseActorStateCopyWith<$Res> {
  _$ExerciseActorStateCopyWithImpl(this._value, this._then);

  final ExerciseActorState _value;
  // ignore: unused_field
  final $Res Function(ExerciseActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$ExerciseActorStateCopyWithImpl<$Res>
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
    return 'ExerciseActorState.initial()';
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
    @required Result addedSuccess(),
    @required Result removedSuccess(),
    @required Result updateFailure(ExerciseFailure exerciseFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(addedSuccess != null);
    assert(removedSuccess != null);
    assert(updateFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result addedSuccess(),
    Result removedSuccess(),
    Result updateFailure(ExerciseFailure exerciseFailure),
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
    @required Result addedSuccess(_AddedSuccess value),
    @required Result removedSuccess(_RemovedSuccess value),
    @required Result updateFailure(_UpdateFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(addedSuccess != null);
    assert(removedSuccess != null);
    assert(updateFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result addedSuccess(_AddedSuccess value),
    Result removedSuccess(_RemovedSuccess value),
    Result updateFailure(_UpdateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExerciseActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$ExerciseActorStateCopyWithImpl<$Res>
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
    return 'ExerciseActorState.actionInProgress()';
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
    @required Result addedSuccess(),
    @required Result removedSuccess(),
    @required Result updateFailure(ExerciseFailure exerciseFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(addedSuccess != null);
    assert(removedSuccess != null);
    assert(updateFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result addedSuccess(),
    Result removedSuccess(),
    Result updateFailure(ExerciseFailure exerciseFailure),
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
    @required Result addedSuccess(_AddedSuccess value),
    @required Result removedSuccess(_RemovedSuccess value),
    @required Result updateFailure(_UpdateFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(addedSuccess != null);
    assert(removedSuccess != null);
    assert(updateFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result addedSuccess(_AddedSuccess value),
    Result removedSuccess(_RemovedSuccess value),
    Result updateFailure(_UpdateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ExerciseActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$AddedSuccessCopyWith<$Res> {
  factory _$AddedSuccessCopyWith(
          _AddedSuccess value, $Res Function(_AddedSuccess) then) =
      __$AddedSuccessCopyWithImpl<$Res>;
}

class __$AddedSuccessCopyWithImpl<$Res>
    extends _$ExerciseActorStateCopyWithImpl<$Res>
    implements _$AddedSuccessCopyWith<$Res> {
  __$AddedSuccessCopyWithImpl(
      _AddedSuccess _value, $Res Function(_AddedSuccess) _then)
      : super(_value, (v) => _then(v as _AddedSuccess));

  @override
  _AddedSuccess get _value => super._value as _AddedSuccess;
}

class _$_AddedSuccess implements _AddedSuccess {
  const _$_AddedSuccess();

  @override
  String toString() {
    return 'ExerciseActorState.addedSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result addedSuccess(),
    @required Result removedSuccess(),
    @required Result updateFailure(ExerciseFailure exerciseFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(addedSuccess != null);
    assert(removedSuccess != null);
    assert(updateFailure != null);
    return addedSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result addedSuccess(),
    Result removedSuccess(),
    Result updateFailure(ExerciseFailure exerciseFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addedSuccess != null) {
      return addedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result addedSuccess(_AddedSuccess value),
    @required Result removedSuccess(_RemovedSuccess value),
    @required Result updateFailure(_UpdateFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(addedSuccess != null);
    assert(removedSuccess != null);
    assert(updateFailure != null);
    return addedSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result addedSuccess(_AddedSuccess value),
    Result removedSuccess(_RemovedSuccess value),
    Result updateFailure(_UpdateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addedSuccess != null) {
      return addedSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddedSuccess implements ExerciseActorState {
  const factory _AddedSuccess() = _$_AddedSuccess;
}

abstract class _$RemovedSuccessCopyWith<$Res> {
  factory _$RemovedSuccessCopyWith(
          _RemovedSuccess value, $Res Function(_RemovedSuccess) then) =
      __$RemovedSuccessCopyWithImpl<$Res>;
}

class __$RemovedSuccessCopyWithImpl<$Res>
    extends _$ExerciseActorStateCopyWithImpl<$Res>
    implements _$RemovedSuccessCopyWith<$Res> {
  __$RemovedSuccessCopyWithImpl(
      _RemovedSuccess _value, $Res Function(_RemovedSuccess) _then)
      : super(_value, (v) => _then(v as _RemovedSuccess));

  @override
  _RemovedSuccess get _value => super._value as _RemovedSuccess;
}

class _$_RemovedSuccess implements _RemovedSuccess {
  const _$_RemovedSuccess();

  @override
  String toString() {
    return 'ExerciseActorState.removedSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RemovedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result addedSuccess(),
    @required Result removedSuccess(),
    @required Result updateFailure(ExerciseFailure exerciseFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(addedSuccess != null);
    assert(removedSuccess != null);
    assert(updateFailure != null);
    return removedSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result addedSuccess(),
    Result removedSuccess(),
    Result updateFailure(ExerciseFailure exerciseFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removedSuccess != null) {
      return removedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result addedSuccess(_AddedSuccess value),
    @required Result removedSuccess(_RemovedSuccess value),
    @required Result updateFailure(_UpdateFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(addedSuccess != null);
    assert(removedSuccess != null);
    assert(updateFailure != null);
    return removedSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result addedSuccess(_AddedSuccess value),
    Result removedSuccess(_RemovedSuccess value),
    Result updateFailure(_UpdateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removedSuccess != null) {
      return removedSuccess(this);
    }
    return orElse();
  }
}

abstract class _RemovedSuccess implements ExerciseActorState {
  const factory _RemovedSuccess() = _$_RemovedSuccess;
}

abstract class _$UpdateFailureCopyWith<$Res> {
  factory _$UpdateFailureCopyWith(
          _UpdateFailure value, $Res Function(_UpdateFailure) then) =
      __$UpdateFailureCopyWithImpl<$Res>;
  $Res call({ExerciseFailure exerciseFailure});

  $ExerciseFailureCopyWith<$Res> get exerciseFailure;
}

class __$UpdateFailureCopyWithImpl<$Res>
    extends _$ExerciseActorStateCopyWithImpl<$Res>
    implements _$UpdateFailureCopyWith<$Res> {
  __$UpdateFailureCopyWithImpl(
      _UpdateFailure _value, $Res Function(_UpdateFailure) _then)
      : super(_value, (v) => _then(v as _UpdateFailure));

  @override
  _UpdateFailure get _value => super._value as _UpdateFailure;

  @override
  $Res call({
    Object exerciseFailure = freezed,
  }) {
    return _then(_UpdateFailure(
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

class _$_UpdateFailure implements _UpdateFailure {
  const _$_UpdateFailure(this.exerciseFailure)
      : assert(exerciseFailure != null);

  @override
  final ExerciseFailure exerciseFailure;

  @override
  String toString() {
    return 'ExerciseActorState.updateFailure(exerciseFailure: $exerciseFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateFailure &&
            (identical(other.exerciseFailure, exerciseFailure) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseFailure, exerciseFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseFailure);

  @override
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith =>
      __$UpdateFailureCopyWithImpl<_UpdateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result addedSuccess(),
    @required Result removedSuccess(),
    @required Result updateFailure(ExerciseFailure exerciseFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(addedSuccess != null);
    assert(removedSuccess != null);
    assert(updateFailure != null);
    return updateFailure(exerciseFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result addedSuccess(),
    Result removedSuccess(),
    Result updateFailure(ExerciseFailure exerciseFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateFailure != null) {
      return updateFailure(exerciseFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result addedSuccess(_AddedSuccess value),
    @required Result removedSuccess(_RemovedSuccess value),
    @required Result updateFailure(_UpdateFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(addedSuccess != null);
    assert(removedSuccess != null);
    assert(updateFailure != null);
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result addedSuccess(_AddedSuccess value),
    Result removedSuccess(_RemovedSuccess value),
    Result updateFailure(_UpdateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailure implements ExerciseActorState {
  const factory _UpdateFailure(ExerciseFailure exerciseFailure) =
      _$_UpdateFailure;

  ExerciseFailure get exerciseFailure;
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith;
}
