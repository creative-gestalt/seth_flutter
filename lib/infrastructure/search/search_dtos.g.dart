// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchDto _$_$_SearchDtoFromJson(Map<String, dynamic> json) {
  return _$_SearchDto(
    book: json['book'] as String,
    items: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : SearchItemDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_SearchDtoToJson(_$_SearchDto instance) =>
    <String, dynamic>{
      'book': instance.book,
      'items': instance.items,
    };

_$_SearchItemDto _$_$_SearchItemDtoFromJson(Map<String, dynamic> json) {
  return _$_SearchItemDto(
    item: json['item'] as String,
  );
}

Map<String, dynamic> _$_$_SearchItemDtoToJson(_$_SearchItemDto instance) =>
    <String, dynamic>{
      'item': instance.item,
    };
