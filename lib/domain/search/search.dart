import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:seth_flutter/domain/core/failures.dart';
import 'package:seth_flutter/domain/search/search_item.dart';
import 'package:seth_flutter/domain/search/value_objects.dart';

part 'search.freezed.dart';

@freezed
abstract class Search implements _$Search {
  const factory Search({
    @required SearchBook book,
    @required List3<SearchItem> items,
  }) = _Search;

  const Search._();

  factory Search.empty() => Search(
        book: SearchBook(''),
        items: List3(emptyList()),
      );

  Map toJson() => { 'book': book, 'items': items };

  Option<ValueFailure<dynamic>> get failureOption {
    return book.failureOrUnit
        .andThen(items.failureOrUnit)
        .andThen(items.getOrCrash()
          .map((searchItem) => searchItem.failureOption)
          .filter((o) => o.isSome())
          .getOrElse(0, (_) => none())
          .fold(() => right(unit), (f) => left(f)),
    )
        .fold((f) => some(f), (_) => none());
  }
}
