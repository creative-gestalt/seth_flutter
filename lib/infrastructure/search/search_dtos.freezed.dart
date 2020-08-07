// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SearchDto _$SearchDtoFromJson(Map<String, dynamic> json) {
  return _SearchDto.fromJson(json);
}

class _$SearchDtoTearOff {
  const _$SearchDtoTearOff();

// ignore: unused_element
  _SearchDto call(
      {@required String book, @required List<SearchItemDto> items}) {
    return _SearchDto(
      book: book,
      items: items,
    );
  }
}

// ignore: unused_element
const $SearchDto = _$SearchDtoTearOff();

mixin _$SearchDto {
  String get book;
  List<SearchItemDto> get items;

  Map<String, dynamic> toJson();
  $SearchDtoCopyWith<SearchDto> get copyWith;
}

abstract class $SearchDtoCopyWith<$Res> {
  factory $SearchDtoCopyWith(SearchDto value, $Res Function(SearchDto) then) =
      _$SearchDtoCopyWithImpl<$Res>;
  $Res call({String book, List<SearchItemDto> items});
}

class _$SearchDtoCopyWithImpl<$Res> implements $SearchDtoCopyWith<$Res> {
  _$SearchDtoCopyWithImpl(this._value, this._then);

  final SearchDto _value;
  // ignore: unused_field
  final $Res Function(SearchDto) _then;

  @override
  $Res call({
    Object book = freezed,
    Object items = freezed,
  }) {
    return _then(_value.copyWith(
      book: book == freezed ? _value.book : book as String,
      items: items == freezed ? _value.items : items as List<SearchItemDto>,
    ));
  }
}

abstract class _$SearchDtoCopyWith<$Res> implements $SearchDtoCopyWith<$Res> {
  factory _$SearchDtoCopyWith(
          _SearchDto value, $Res Function(_SearchDto) then) =
      __$SearchDtoCopyWithImpl<$Res>;
  @override
  $Res call({String book, List<SearchItemDto> items});
}

class __$SearchDtoCopyWithImpl<$Res> extends _$SearchDtoCopyWithImpl<$Res>
    implements _$SearchDtoCopyWith<$Res> {
  __$SearchDtoCopyWithImpl(_SearchDto _value, $Res Function(_SearchDto) _then)
      : super(_value, (v) => _then(v as _SearchDto));

  @override
  _SearchDto get _value => super._value as _SearchDto;

  @override
  $Res call({
    Object book = freezed,
    Object items = freezed,
  }) {
    return _then(_SearchDto(
      book: book == freezed ? _value.book : book as String,
      items: items == freezed ? _value.items : items as List<SearchItemDto>,
    ));
  }
}

@JsonSerializable()
class _$_SearchDto extends _SearchDto {
  const _$_SearchDto({@required this.book, @required this.items})
      : assert(book != null),
        assert(items != null),
        super._();

  factory _$_SearchDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchDtoFromJson(json);

  @override
  final String book;
  @override
  final List<SearchItemDto> items;

  @override
  String toString() {
    return 'SearchDto(book: $book, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchDto &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(book) ^
      const DeepCollectionEquality().hash(items);

  @override
  _$SearchDtoCopyWith<_SearchDto> get copyWith =>
      __$SearchDtoCopyWithImpl<_SearchDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchDtoToJson(this);
  }
}

abstract class _SearchDto extends SearchDto {
  const _SearchDto._() : super._();
  const factory _SearchDto(
      {@required String book,
      @required List<SearchItemDto> items}) = _$_SearchDto;

  factory _SearchDto.fromJson(Map<String, dynamic> json) =
      _$_SearchDto.fromJson;

  @override
  String get book;
  @override
  List<SearchItemDto> get items;
  @override
  _$SearchDtoCopyWith<_SearchDto> get copyWith;
}

SearchItemDto _$SearchItemDtoFromJson(Map<String, dynamic> json) {
  return _SearchItemDto.fromJson(json);
}

class _$SearchItemDtoTearOff {
  const _$SearchItemDtoTearOff();

// ignore: unused_element
  _SearchItemDto call({@required String item}) {
    return _SearchItemDto(
      item: item,
    );
  }
}

// ignore: unused_element
const $SearchItemDto = _$SearchItemDtoTearOff();

mixin _$SearchItemDto {
  String get item;

  Map<String, dynamic> toJson();
  $SearchItemDtoCopyWith<SearchItemDto> get copyWith;
}

abstract class $SearchItemDtoCopyWith<$Res> {
  factory $SearchItemDtoCopyWith(
          SearchItemDto value, $Res Function(SearchItemDto) then) =
      _$SearchItemDtoCopyWithImpl<$Res>;
  $Res call({String item});
}

class _$SearchItemDtoCopyWithImpl<$Res>
    implements $SearchItemDtoCopyWith<$Res> {
  _$SearchItemDtoCopyWithImpl(this._value, this._then);

  final SearchItemDto _value;
  // ignore: unused_field
  final $Res Function(SearchItemDto) _then;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed ? _value.item : item as String,
    ));
  }
}

abstract class _$SearchItemDtoCopyWith<$Res>
    implements $SearchItemDtoCopyWith<$Res> {
  factory _$SearchItemDtoCopyWith(
          _SearchItemDto value, $Res Function(_SearchItemDto) then) =
      __$SearchItemDtoCopyWithImpl<$Res>;
  @override
  $Res call({String item});
}

class __$SearchItemDtoCopyWithImpl<$Res>
    extends _$SearchItemDtoCopyWithImpl<$Res>
    implements _$SearchItemDtoCopyWith<$Res> {
  __$SearchItemDtoCopyWithImpl(
      _SearchItemDto _value, $Res Function(_SearchItemDto) _then)
      : super(_value, (v) => _then(v as _SearchItemDto));

  @override
  _SearchItemDto get _value => super._value as _SearchItemDto;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(_SearchItemDto(
      item: item == freezed ? _value.item : item as String,
    ));
  }
}

@JsonSerializable()
class _$_SearchItemDto extends _SearchItemDto {
  const _$_SearchItemDto({@required this.item})
      : assert(item != null),
        super._();

  factory _$_SearchItemDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchItemDtoFromJson(json);

  @override
  final String item;

  @override
  String toString() {
    return 'SearchItemDto(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchItemDto &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @override
  _$SearchItemDtoCopyWith<_SearchItemDto> get copyWith =>
      __$SearchItemDtoCopyWithImpl<_SearchItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchItemDtoToJson(this);
  }
}

abstract class _SearchItemDto extends SearchItemDto {
  const _SearchItemDto._() : super._();
  const factory _SearchItemDto({@required String item}) = _$_SearchItemDto;

  factory _SearchItemDto.fromJson(Map<String, dynamic> json) =
      _$_SearchItemDto.fromJson;

  @override
  String get item;
  @override
  _$SearchItemDtoCopyWith<_SearchItemDto> get copyWith;
}
