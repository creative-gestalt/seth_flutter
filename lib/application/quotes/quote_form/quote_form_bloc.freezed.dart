// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quote_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$QuoteFormEventTearOff {
  const _$QuoteFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Quote> initialQuoteOption) {
    return _Initialized(
      initialQuoteOption,
    );
  }

// ignore: unused_element
  _BodyChanged bodyChanged(String bodyStr) {
    return _BodyChanged(
      bodyStr,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

// ignore: unused_element
const $QuoteFormEvent = _$QuoteFormEventTearOff();

mixin _$QuoteFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Quote> initialQuoteOption),
    @required Result bodyChanged(String bodyStr),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Quote> initialQuoteOption),
    Result bodyChanged(String bodyStr),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $QuoteFormEventCopyWith<$Res> {
  factory $QuoteFormEventCopyWith(
          QuoteFormEvent value, $Res Function(QuoteFormEvent) then) =
      _$QuoteFormEventCopyWithImpl<$Res>;
}

class _$QuoteFormEventCopyWithImpl<$Res>
    implements $QuoteFormEventCopyWith<$Res> {
  _$QuoteFormEventCopyWithImpl(this._value, this._then);

  final QuoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(QuoteFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Quote> initialQuoteOption});
}

class __$InitializedCopyWithImpl<$Res>
    extends _$QuoteFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialQuoteOption = freezed,
  }) {
    return _then(_Initialized(
      initialQuoteOption == freezed
          ? _value.initialQuoteOption
          : initialQuoteOption as Option<Quote>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialQuoteOption)
      : assert(initialQuoteOption != null);

  @override
  final Option<Quote> initialQuoteOption;

  @override
  String toString() {
    return 'QuoteFormEvent.initialized(initialQuoteOption: $initialQuoteOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialQuoteOption, initialQuoteOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialQuoteOption, initialQuoteOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialQuoteOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Quote> initialQuoteOption),
    @required Result bodyChanged(String bodyStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(saved != null);
    return initialized(initialQuoteOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Quote> initialQuoteOption),
    Result bodyChanged(String bodyStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialQuoteOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements QuoteFormEvent {
  const factory _Initialized(Option<Quote> initialQuoteOption) = _$_Initialized;

  Option<Quote> get initialQuoteOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

class __$BodyChangedCopyWithImpl<$Res>
    extends _$QuoteFormEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object bodyStr = freezed,
  }) {
    return _then(_BodyChanged(
      bodyStr == freezed ? _value.bodyStr : bodyStr as String,
    ));
  }
}

class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged(this.bodyStr) : assert(bodyStr != null);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'QuoteFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Quote> initialQuoteOption),
    @required Result bodyChanged(String bodyStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(saved != null);
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Quote> initialQuoteOption),
    Result bodyChanged(String bodyStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(saved != null);
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements QuoteFormEvent {
  const factory _BodyChanged(String bodyStr) = _$_BodyChanged;

  String get bodyStr;
  _$BodyChangedCopyWith<_BodyChanged> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res> extends _$QuoteFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'QuoteFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Quote> initialQuoteOption),
    @required Result bodyChanged(String bodyStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Quote> initialQuoteOption),
    Result bodyChanged(String bodyStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements QuoteFormEvent {
  const factory _Saved() = _$_Saved;
}

class _$QuoteFormStateTearOff {
  const _$QuoteFormStateTearOff();

// ignore: unused_element
  _QuoteFormState call(
      {@required
          Quote quote,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<QuoteFailure, Unit>> saveFailureOrSuccessOption}) {
    return _QuoteFormState(
      quote: quote,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $QuoteFormState = _$QuoteFormStateTearOff();

mixin _$QuoteFormState {
  Quote get quote;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<QuoteFailure, Unit>> get saveFailureOrSuccessOption;

  $QuoteFormStateCopyWith<QuoteFormState> get copyWith;
}

abstract class $QuoteFormStateCopyWith<$Res> {
  factory $QuoteFormStateCopyWith(
          QuoteFormState value, $Res Function(QuoteFormState) then) =
      _$QuoteFormStateCopyWithImpl<$Res>;
  $Res call(
      {Quote quote,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<QuoteFailure, Unit>> saveFailureOrSuccessOption});

  $QuoteCopyWith<$Res> get quote;
}

class _$QuoteFormStateCopyWithImpl<$Res>
    implements $QuoteFormStateCopyWith<$Res> {
  _$QuoteFormStateCopyWithImpl(this._value, this._then);

  final QuoteFormState _value;
  // ignore: unused_field
  final $Res Function(QuoteFormState) _then;

  @override
  $Res call({
    Object quote = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      quote: quote == freezed ? _value.quote : quote as Quote,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<QuoteFailure, Unit>>,
    ));
  }

  @override
  $QuoteCopyWith<$Res> get quote {
    if (_value.quote == null) {
      return null;
    }
    return $QuoteCopyWith<$Res>(_value.quote, (value) {
      return _then(_value.copyWith(quote: value));
    });
  }
}

abstract class _$QuoteFormStateCopyWith<$Res>
    implements $QuoteFormStateCopyWith<$Res> {
  factory _$QuoteFormStateCopyWith(
          _QuoteFormState value, $Res Function(_QuoteFormState) then) =
      __$QuoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Quote quote,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<QuoteFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $QuoteCopyWith<$Res> get quote;
}

class __$QuoteFormStateCopyWithImpl<$Res>
    extends _$QuoteFormStateCopyWithImpl<$Res>
    implements _$QuoteFormStateCopyWith<$Res> {
  __$QuoteFormStateCopyWithImpl(
      _QuoteFormState _value, $Res Function(_QuoteFormState) _then)
      : super(_value, (v) => _then(v as _QuoteFormState));

  @override
  _QuoteFormState get _value => super._value as _QuoteFormState;

  @override
  $Res call({
    Object quote = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_QuoteFormState(
      quote: quote == freezed ? _value.quote : quote as Quote,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<QuoteFailure, Unit>>,
    ));
  }
}

class _$_QuoteFormState implements _QuoteFormState {
  const _$_QuoteFormState(
      {@required this.quote,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(quote != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Quote quote;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<QuoteFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'QuoteFormState(quote: $quote, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuoteFormState &&
            (identical(other.quote, quote) ||
                const DeepCollectionEquality().equals(other.quote, quote)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quote) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$QuoteFormStateCopyWith<_QuoteFormState> get copyWith =>
      __$QuoteFormStateCopyWithImpl<_QuoteFormState>(this, _$identity);
}

abstract class _QuoteFormState implements QuoteFormState {
  const factory _QuoteFormState(
          {@required
              Quote quote,
          @required
              bool showErrorMessages,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<QuoteFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_QuoteFormState;

  @override
  Quote get quote;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<QuoteFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$QuoteFormStateCopyWith<_QuoteFormState> get copyWith;
}
