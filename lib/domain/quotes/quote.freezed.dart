// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$QuoteTearOff {
  const _$QuoteTearOff();

// ignore: unused_element
  _Quote call(
      {@required UniqueId id,
      @required QuoteBody body,
      @required QuoteBook book}) {
    return _Quote(
      id: id,
      body: body,
      book: book,
    );
  }
}

// ignore: unused_element
const $Quote = _$QuoteTearOff();

mixin _$Quote {
  UniqueId get id;
  QuoteBody get body;
  QuoteBook get book;

  $QuoteCopyWith<Quote> get copyWith;
}

abstract class $QuoteCopyWith<$Res> {
  factory $QuoteCopyWith(Quote value, $Res Function(Quote) then) =
      _$QuoteCopyWithImpl<$Res>;
  $Res call({UniqueId id, QuoteBody body, QuoteBook book});
}

class _$QuoteCopyWithImpl<$Res> implements $QuoteCopyWith<$Res> {
  _$QuoteCopyWithImpl(this._value, this._then);

  final Quote _value;
  // ignore: unused_field
  final $Res Function(Quote) _then;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object book = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      body: body == freezed ? _value.body : body as QuoteBody,
      book: book == freezed ? _value.book : book as QuoteBook,
    ));
  }
}

abstract class _$QuoteCopyWith<$Res> implements $QuoteCopyWith<$Res> {
  factory _$QuoteCopyWith(_Quote value, $Res Function(_Quote) then) =
      __$QuoteCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, QuoteBody body, QuoteBook book});
}

class __$QuoteCopyWithImpl<$Res> extends _$QuoteCopyWithImpl<$Res>
    implements _$QuoteCopyWith<$Res> {
  __$QuoteCopyWithImpl(_Quote _value, $Res Function(_Quote) _then)
      : super(_value, (v) => _then(v as _Quote));

  @override
  _Quote get _value => super._value as _Quote;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object book = freezed,
  }) {
    return _then(_Quote(
      id: id == freezed ? _value.id : id as UniqueId,
      body: body == freezed ? _value.body : body as QuoteBody,
      book: book == freezed ? _value.book : book as QuoteBook,
    ));
  }
}

class _$_Quote extends _Quote {
  const _$_Quote({@required this.id, @required this.body, @required this.book})
      : assert(id != null),
        assert(body != null),
        assert(book != null),
        super._();

  @override
  final UniqueId id;
  @override
  final QuoteBody body;
  @override
  final QuoteBook book;

  @override
  String toString() {
    return 'Quote(id: $id, body: $body, book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Quote &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(book);

  @override
  _$QuoteCopyWith<_Quote> get copyWith =>
      __$QuoteCopyWithImpl<_Quote>(this, _$identity);
}

abstract class _Quote extends Quote {
  const _Quote._() : super._();
  const factory _Quote(
      {@required UniqueId id,
      @required QuoteBody body,
      @required QuoteBook book}) = _$_Quote;

  @override
  UniqueId get id;
  @override
  QuoteBody get body;
  @override
  QuoteBook get book;
  @override
  _$QuoteCopyWith<_Quote> get copyWith;
}
