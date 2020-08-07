import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seth_flutter/domain/search/search.dart';
import 'package:seth_flutter/domain/search/search_item.dart';
import 'package:seth_flutter/infrastructure/core/search/seth_search_snapshot.dart';
import 'package:seth_flutter/domain/search/value_objects.dart';
import 'package:kt_dart/kt.dart';

part 'search_dtos.freezed.dart';
part 'search_dtos.g.dart';

@freezed
abstract class SearchDto implements _$SearchDto {
  const factory SearchDto({
    @required String book,
    @required List<SearchItemDto> items,
  }) = _SearchDto;

  const SearchDto._();

  factory SearchDto.fromDomain(Search search) {
    return SearchDto(
      book: search.book.getOrCrash(),
      items: search.items.getOrCrash()
          .map((searchItem) => SearchItemDto.fromDomain(searchItem))
          .asList(),
    );
  }

  Search toDomain() {
    return Search(
      book: SearchBook(book),
      items: List3(items.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }

  factory SearchDto.fromJson(Map<String, dynamic> json) =>
      _$SearchDtoFromJson(json);

  factory SearchDto.fromFindingSeth(SearchSnapshot doc) {
    return SearchDto.fromJson(doc.data);
  }
}

@freezed
abstract class SearchItemDto implements _$SearchItemDto {
  const factory SearchItemDto({
    @required String item,
  }) = _SearchItemDto;

  const SearchItemDto._();

  factory SearchItemDto.fromDomain(SearchItem searchItem) {
    return SearchItemDto(
      item: searchItem.item.getOrCrash(),
    );
  }

  SearchItem toDomain() {
    return SearchItem(
      item: SearchBody(item),
    );
  }

  factory SearchItemDto.fromJson(Map<String, dynamic> json) =>
      _$SearchItemDtoFromJson(json);
}
