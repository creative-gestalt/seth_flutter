// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchItemTearOff {
  const _$SearchItemTearOff();

// ignore: unused_element
  _SearchItem call({@required SearchBody item}) {
    return _SearchItem(
      item: item,
    );
  }
}

// ignore: unused_element
const $SearchItem = _$SearchItemTearOff();

mixin _$SearchItem {
  SearchBody get item;

  $SearchItemCopyWith<SearchItem> get copyWith;
}

abstract class $SearchItemCopyWith<$Res> {
  factory $SearchItemCopyWith(
          SearchItem value, $Res Function(SearchItem) then) =
      _$SearchItemCopyWithImpl<$Res>;
  $Res call({SearchBody item});
}

class _$SearchItemCopyWithImpl<$Res> implements $SearchItemCopyWith<$Res> {
  _$SearchItemCopyWithImpl(this._value, this._then);

  final SearchItem _value;
  // ignore: unused_field
  final $Res Function(SearchItem) _then;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed ? _value.item : item as SearchBody,
    ));
  }
}

abstract class _$SearchItemCopyWith<$Res> implements $SearchItemCopyWith<$Res> {
  factory _$SearchItemCopyWith(
          _SearchItem value, $Res Function(_SearchItem) then) =
      __$SearchItemCopyWithImpl<$Res>;
  @override
  $Res call({SearchBody item});
}

class __$SearchItemCopyWithImpl<$Res> extends _$SearchItemCopyWithImpl<$Res>
    implements _$SearchItemCopyWith<$Res> {
  __$SearchItemCopyWithImpl(
      _SearchItem _value, $Res Function(_SearchItem) _then)
      : super(_value, (v) => _then(v as _SearchItem));

  @override
  _SearchItem get _value => super._value as _SearchItem;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(_SearchItem(
      item: item == freezed ? _value.item : item as SearchBody,
    ));
  }
}

class _$_SearchItem extends _SearchItem {
  const _$_SearchItem({@required this.item})
      : assert(item != null),
        super._();

  @override
  final SearchBody item;

  @override
  String toString() {
    return 'SearchItem(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchItem &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @override
  _$SearchItemCopyWith<_SearchItem> get copyWith =>
      __$SearchItemCopyWithImpl<_SearchItem>(this, _$identity);
}

abstract class _SearchItem extends SearchItem {
  const _SearchItem._() : super._();
  const factory _SearchItem({@required SearchBody item}) = _$_SearchItem;

  @override
  SearchBody get item;
  @override
  _$SearchItemCopyWith<_SearchItem> get copyWith;
}
