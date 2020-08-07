import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seth_flutter/domain/core/failures.dart';
import 'package:seth_flutter/domain/search/value_objects.dart';

part 'search_item.freezed.dart';

@freezed
abstract class SearchItem implements _$SearchItem {
  const factory SearchItem({
    @required SearchBody item,
  }) = _SearchItem;

  const SearchItem._();

  factory SearchItem.empty() => SearchItem(
        item: SearchBody(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return item.value.fold((f) => some(f), (_) => none());
  }
}
