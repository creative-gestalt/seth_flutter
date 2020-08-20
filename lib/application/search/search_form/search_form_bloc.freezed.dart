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

// ignore: unused_element
  SearchPressed searchPressed() {
    return const SearchPressed();
  }
}

// ignore: unused_element
const $SearchFormEvent = _$SearchFormEventTearOff();

mixin _$SearchFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inputChanged(String inputStr),
    @required Result searchPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inputChanged(String inputStr),
    Result searchPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inputChanged(InputChanged value),
    @required Result searchPressed(SearchPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inputChanged(InputChanged value),
    Result searchPressed(SearchPressed value),
    @required Result orElse(),
  });
}

abstract class $SearchFormEventCopyWith<$Res> {
  factory $SearchFormEventCopyWith(
          SearchFormEvent value, $Res Function(SearchFormEvent) then) =
      _$SearchFormEventCopyWithImpl<$Res>;
}

class _$SearchFormEventCopyWithImpl<$Res>
    implements $SearchFormEventCopyWith<$Res> {
  _$SearchFormEventCopyWithImpl(this._value, this._then);

  final SearchFormEvent _value;
  // ignore: unused_field
  final $Res Function(SearchFormEvent) _then;
}

abstract class $InputChangedCopyWith<$Res> {
  factory $InputChangedCopyWith(
          InputChanged value, $Res Function(InputChanged) then) =
      _$InputChangedCopyWithImpl<$Res>;
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
    @required Result searchPressed(),
  }) {
    assert(inputChanged != null);
    assert(searchPressed != null);
    return inputChanged(inputStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inputChanged(String inputStr),
    Result searchPressed(),
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
    @required Result searchPressed(SearchPressed value),
  }) {
    assert(inputChanged != null);
    assert(searchPressed != null);
    return inputChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inputChanged(InputChanged value),
    Result searchPressed(SearchPressed value),
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

  String get inputStr;
  $InputChangedCopyWith<InputChanged> get copyWith;
}

abstract class $SearchPressedCopyWith<$Res> {
  factory $SearchPressedCopyWith(
          SearchPressed value, $Res Function(SearchPressed) then) =
      _$SearchPressedCopyWithImpl<$Res>;
}

class _$SearchPressedCopyWithImpl<$Res>
    extends _$SearchFormEventCopyWithImpl<$Res>
    implements $SearchPressedCopyWith<$Res> {
  _$SearchPressedCopyWithImpl(
      SearchPressed _value, $Res Function(SearchPressed) _then)
      : super(_value, (v) => _then(v as SearchPressed));

  @override
  SearchPressed get _value => super._value as SearchPressed;
}

class _$SearchPressed implements SearchPressed {
  const _$SearchPressed();

  @override
  String toString() {
    return 'SearchFormEvent.searchPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inputChanged(String inputStr),
    @required Result searchPressed(),
  }) {
    assert(inputChanged != null);
    assert(searchPressed != null);
    return searchPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inputChanged(String inputStr),
    Result searchPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchPressed != null) {
      return searchPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inputChanged(InputChanged value),
    @required Result searchPressed(SearchPressed value),
  }) {
    assert(inputChanged != null);
    assert(searchPressed != null);
    return searchPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inputChanged(InputChanged value),
    Result searchPressed(SearchPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchPressed != null) {
      return searchPressed(this);
    }
    return orElse();
  }
}

abstract class SearchPressed implements SearchFormEvent {
  const factory SearchPressed() = _$SearchPressed;
}

class _$SearchFormStateTearOff {
  const _$SearchFormStateTearOff();

// ignore: unused_element
  _SearchFormState call(
      {@required SearchInput searchInput,
      @required bool showErrorMessages,
      @required bool isSubmitting}) {
    return _SearchFormState(
      searchInput: searchInput,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
    );
  }
}

// ignore: unused_element
const $SearchFormState = _$SearchFormStateTearOff();

mixin _$SearchFormState {
  SearchInput get searchInput;
  bool get showErrorMessages;
  bool get isSubmitting;

  $SearchFormStateCopyWith<SearchFormState> get copyWith;
}

abstract class $SearchFormStateCopyWith<$Res> {
  factory $SearchFormStateCopyWith(
          SearchFormState value, $Res Function(SearchFormState) then) =
      _$SearchFormStateCopyWithImpl<$Res>;
  $Res call(
      {SearchInput searchInput, bool showErrorMessages, bool isSubmitting});
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
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      searchInput: searchInput == freezed
          ? _value.searchInput
          : searchInput as SearchInput,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

abstract class _$SearchFormStateCopyWith<$Res>
    implements $SearchFormStateCopyWith<$Res> {
  factory _$SearchFormStateCopyWith(
          _SearchFormState value, $Res Function(_SearchFormState) then) =
      __$SearchFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SearchInput searchInput, bool showErrorMessages, bool isSubmitting});
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
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_SearchFormState(
      searchInput: searchInput == freezed
          ? _value.searchInput
          : searchInput as SearchInput,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

class _$_SearchFormState implements _SearchFormState {
  const _$_SearchFormState(
      {@required this.searchInput,
      @required this.showErrorMessages,
      @required this.isSubmitting})
      : assert(searchInput != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null);

  @override
  final SearchInput searchInput;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'SearchFormState(searchInput: $searchInput, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchFormState &&
            (identical(other.searchInput, searchInput) ||
                const DeepCollectionEquality()
                    .equals(other.searchInput, searchInput)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchInput) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @override
  _$SearchFormStateCopyWith<_SearchFormState> get copyWith =>
      __$SearchFormStateCopyWithImpl<_SearchFormState>(this, _$identity);
}

abstract class _SearchFormState implements SearchFormState {
  const factory _SearchFormState(
      {@required SearchInput searchInput,
      @required bool showErrorMessages,
      @required bool isSubmitting}) = _$_SearchFormState;

  @override
  SearchInput get searchInput;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  _$SearchFormStateCopyWith<_SearchFormState> get copyWith;
}
