import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_failure.freezed.dart';

@freezed
abstract class SearchFailure with _$SearchFailure {
  const factory SearchFailure.unexpected() = _Unexpected;
  const factory SearchFailure.insufficientPermissions() = _InsufficientPermissions;
  const factory SearchFailure.unableToUpdate() = _UnableToUpdate;
  const factory SearchFailure.noResults() = _NoResults;
}
