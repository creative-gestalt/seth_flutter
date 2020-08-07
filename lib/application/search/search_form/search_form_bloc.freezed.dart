// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchFormEventTearOff {
  const _$SearchFormEventTearOff();

// ignore: unused_element
  InputChanged inputChanged(String inputStr) {
    return InputChanged(
      inputStr,
    );
  }
}

// ignore: unused_element
const $SearchFormEvent = _$SearchFormEventTearOff();

mixin _$SearchFormEvent {
  String get inputStr;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inputChanged(String inputStr),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inputChanged(String inputStr),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inputChanged(InputChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inputChanged(InputChanged value),
    @required Result orElse(),
  });

  $SearchFormEventCopyWith<SearchFormEvent> get copyWith;
}

abstract class $SearchFormEventCopyWith<$Res> {
  factory $SearchFormEventCopyWith(
          SearchFormEvent value, $Res Function(SearchFormEvent) then) =
      _$SearchFormEventCopyWithImpl<$Res>;
  $Res call({String inputStr});
}

class _$SearchFormEventCopyWithImpl<$Res>
    implements $SearchFormEventCopyWith<$Res> {
  _$SearchFormEventCopyWithImpl(this._value, this._then);

  final SearchFormEvent _value;
  // ignore: unused_field
  final $Res Function(SearchFormEvent) _then;

  @override
  $Res call({
    Object inputStr = freezed,
  }) {
    return _then(_value.copyWith(
      inputStr: inputStr == freezed ? _value.inputStr : inputStr as String,
    ));
  }
}

abstract class $InputChangedCopyWith<$Res>
    implements $SearchFormEventCopyWith<$Res> {
  factory $InputChangedCopyWith(
          InputChanged value, $Res Function(InputChanged) then) =
      _$InputChangedCopyWithImpl<$Res>;
  @override
  $Res call({String inputStr});
}

class _$InputChangedCopyWithImpl<$Res>
    extends _$SearchFormEventCopyWithImpl<$Res>
    implements $InputChangedCopyWith<$Res> {
  _$InputChangedCopyWithImpl(
      InputChanged _value, $Res Function(InputChanged) _then)
      : super(_value, (v) => _then(v as InputChanged));

  @override
  InputChanged get _value => super._value as InputChanged;

  @override
  $Res call({
    Object inputStr = freezed,
  }) {
    return _then(InputChanged(
      inputStr == freezed ? _value.inputStr : inputStr as String,
    ));
  }
}

class _$InputChanged implements InputChanged {
  const _$InputChanged(this.inputStr) : assert(inputStr != null);

  @override
  final String inputStr;

  @override
  String toString() {
    return 'SearchFormEvent.inputChanged(inputStr: $inputStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InputChanged &&
            (identical(other.inputStr, inputStr) ||
                const DeepCollectionEquality()
                    .equals(other.inputStr, inputStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(inputStr);

  @override
  $InputChangedCopyWith<InputChanged> get copyWith =>
      _$InputChangedCopyWithImpl<InputChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inputChanged(String inputStr),
  }) {
    assert(inputChanged != null);
    return inputChanged(inputStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inputChanged(String inputStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inputChanged != null) {
      return inputChanged(inputStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inputChanged(InputChanged value),
  }) {
    assert(inputChanged != null);
    return inputChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inputChanged(InputChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inputChanged != null) {
      return inputChanged(this);
    }
    return orElse();
  }
}

abstract class InputChanged implements SearchFormEvent {
  const factory InputChanged(String inputStr) = _$InputChanged;

  @override
  String get inputStr;
  @override
  $InputChangedCopyWith<InputChanged> get copyWith;
}

class _$SearchFormStateTearOff {
  const _$SearchFormStateTearOff();

// ignore: unused_element
  _SearchFormState call({@required SearchInput searchInput}) {
    return _SearchFormState(
      searchInput: searchInput,
    );
  }
}

// ignore: unused_element
const $SearchFormState = _$SearchFormStateTearOff();

mixin _$SearchFormState {
  SearchInput get searchInput;

  $SearchFormStateCopyWith<SearchFormState> get copyWith;
}

abstract class $SearchFormStateCopyWith<$Res> {
  factory $SearchFormStateCopyWith(
          SearchFormState value, $Res Function(SearchFormState) then) =
      _$SearchFormStateCopyWithImpl<$Res>;
  $Res call({SearchInput searchInput});
}

class _$SearchFormStateCopyWithImpl<$Res>
    implements $SearchFormStateCopyWith<$Res> {
  _$SearchFormStateCopyWithImpl(this._value, this._then);

  final SearchFormState _value;
  // ignore: unused_field
  final $Res Function(SearchFormState) _then;

  @override
  $Res call({
    Object searchInput = freezed,
  }) {
    return _then(_value.copyWith(
      searchInput: searchInput == freezed
          ? _value.searchInput
          : searchInput as SearchInput,
    ));
  }
}

abstract class _$SearchFormStateCopyWith<$Res>
    implements $SearchFormStateCopyWith<$Res> {
  factory _$SearchFormStateCopyWith(
          _SearchFormState value, $Res Function(_SearchFormState) then) =
      __$SearchFormStateCopyWithImpl<$Res>;
  @override
  $Res call({SearchInput searchInput});
}

class __$SearchFormStateCopyWithImpl<$Res>
    extends _$SearchFormStateCopyWithImpl<$Res>
    implements _$SearchFormStateCopyWith<$Res> {
  __$SearchFormStateCopyWithImpl(
      _SearchFormState _value, $Res Function(_SearchFormState) _then)
      : super(_value, (v) => _then(v as _SearchFormState));

  @override
  _SearchFormState get _value => super._value as _SearchFormState;

  @override
  $Res call({
    Object searchInput = freezed,
  }) {
    return _then(_SearchFormState(
      searchInput: searchInput == freezed
          ? _value.searchInput
          : searchInput as SearchInput,
    ));
  }
}

class _$_SearchFormState implements _SearchFormState {
  const _$_SearchFormState({@required this.searchInput})
      : assert(searchInput != null);

  @override
  final SearchInput searchInput;

  @override
  String toString() {
    return 'SearchFormState(searchInput: $searchInput)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchFormState &&
            (identical(other.searchInput, searchInput) ||
                const DeepCollectionEquality()
                    .equals(other.searchInput, searchInput)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchInput);

  @override
  _$SearchFormStateCopyWith<_SearchFormState> get copyWith =>
      __$SearchFormStateCopyWithImpl<_SearchFormState>(this, _$identity);
}

abstract class _SearchFormState implements SearchFormState {
  const factory _SearchFormState({@required SearchInput searchInput}) =
      _$_SearchFormState;

  @override
  SearchInput get searchInput;
  @override
  _$SearchFormStateCopyWith<_SearchFormState> get copyWith;
}
