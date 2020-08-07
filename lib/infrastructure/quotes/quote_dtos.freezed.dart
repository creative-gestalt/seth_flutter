// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quote_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
QuoteDto _$QuoteDtoFromJson(Map<String, dynamic> json) {
  return _QuoteDto.fromJson(json);
}

class _$QuoteDtoTearOff {
  const _$QuoteDtoTearOff();

// ignore: unused_element
  _QuoteDto call(
      {@JsonKey(ignore: true) String id,
      @required String body,
      @required String book,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _QuoteDto(
      id: id,
      body: body,
      book: book,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $QuoteDto = _$QuoteDtoTearOff();

mixin _$QuoteDto {
  @JsonKey(ignore: true)
  String get id;
  String get body;
  String get book;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $QuoteDtoCopyWith<QuoteDto> get copyWith;
}

abstract class $QuoteDtoCopyWith<$Res> {
  factory $QuoteDtoCopyWith(QuoteDto value, $Res Function(QuoteDto) then) =
      _$QuoteDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String body,
      String book,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$QuoteDtoCopyWithImpl<$Res> implements $QuoteDtoCopyWith<$Res> {
  _$QuoteDtoCopyWithImpl(this._value, this._then);

  final QuoteDto _value;
  // ignore: unused_field
  final $Res Function(QuoteDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object book = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      body: body == freezed ? _value.body : body as String,
      book: book == freezed ? _value.book : book as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$QuoteDtoCopyWith<$Res> implements $QuoteDtoCopyWith<$Res> {
  factory _$QuoteDtoCopyWith(_QuoteDto value, $Res Function(_QuoteDto) then) =
      __$QuoteDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String body,
      String book,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$QuoteDtoCopyWithImpl<$Res> extends _$QuoteDtoCopyWithImpl<$Res>
    implements _$QuoteDtoCopyWith<$Res> {
  __$QuoteDtoCopyWithImpl(_QuoteDto _value, $Res Function(_QuoteDto) _then)
      : super(_value, (v) => _then(v as _QuoteDto));

  @override
  _QuoteDto get _value => super._value as _QuoteDto;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object book = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_QuoteDto(
      id: id == freezed ? _value.id : id as String,
      body: body == freezed ? _value.body : body as String,
      book: book == freezed ? _value.book : book as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_QuoteDto extends _QuoteDto {
  const _$_QuoteDto(
      {@JsonKey(ignore: true) this.id,
      @required this.body,
      @required this.book,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(body != null),
        assert(book != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_QuoteDto.fromJson(Map<String, dynamic> json) =>
      _$_$_QuoteDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String body;
  @override
  final String book;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'QuoteDto(id: $id, body: $body, book: $book, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuoteDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(book) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$QuoteDtoCopyWith<_QuoteDto> get copyWith =>
      __$QuoteDtoCopyWithImpl<_QuoteDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuoteDtoToJson(this);
  }
}

abstract class _QuoteDto extends QuoteDto {
  const _QuoteDto._() : super._();
  const factory _QuoteDto(
          {@JsonKey(ignore: true) String id,
          @required String body,
          @required String book,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_QuoteDto;

  factory _QuoteDto.fromJson(Map<String, dynamic> json) = _$_QuoteDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get body;
  @override
  String get book;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$QuoteDtoCopyWith<_QuoteDto> get copyWith;
}
