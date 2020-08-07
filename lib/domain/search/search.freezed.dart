// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchTearOff {
  const _$SearchTearOff();

// ignore: unused_element
  _Search call({@required SearchBook book, @required List3<SearchItem> items}) {
    return _Search(
      book: book,
      items: items,
    );
  }
}

// ignore: unused_element
const $Search = _$SearchTearOff();

mixin _$Search {
  SearchBook get book;
  List3<SearchItem> get items;

  $SearchCopyWith<Search> get copyWith;
}

abstract class $SearchCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) then) =
      _$SearchCopyWithImpl<$Res>;
  $Res call({SearchBook book, List3<SearchItem> items});
}

class _$SearchCopyWithImpl<$Res> implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(this._value, this._then);

  final Search _value;
  // ignore: unused_field
  final $Res Function(Search) _then;

  @override
  $Res call({
    Object book = freezed,
    Object items = freezed,
  }) {
    return _then(_value.copyWith(
      book: book == freezed ? _value.book : book as SearchBook,
      items: items == freezed ? _value.items : items as List3<SearchItem>,
    ));
  }
}

abstract class _$SearchCopyWith<$Res> implements $SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
  @override
  $Res call({SearchBook book, List3<SearchItem> items});
}

class __$SearchCopyWithImpl<$Res> extends _$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(_Search _value, $Res Function(_Search) _then)
      : super(_value, (v) => _then(v as _Search));

  @override
  _Search get _value => super._value as _Search;

  @override
  $Res call({
    Object book = freezed,
    Object items = freezed,
  }) {
    return _then(_Search(
      book: book == freezed ? _value.book : book as SearchBook,
      items: items == freezed ? _value.items : items as List3<SearchItem>,
    ));
  }
}

class _$_Search extends _Search {
  const _$_Search({@required this.book, @required this.items})
      : assert(book != null),
        assert(items != null),
        super._();

  @override
  final SearchBook book;
  @override
  final List3<SearchItem> items;

  @override
  String toString() {
    return 'Search(book: $book, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Search &&
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
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);
}

abstract class _Search extends Search {
  const _Search._() : super._();
  const factory _Search(
      {@required SearchBook book,
      @required List3<SearchItem> items}) = _$_Search;

  @override
  SearchBook get book;
  @override
  List3<SearchItem> get items;
  @override
  _$SearchCopyWith<_Search> get copyWith;
}
