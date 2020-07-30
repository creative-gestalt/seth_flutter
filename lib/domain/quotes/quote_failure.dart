import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_failure.freezed.dart';

@freezed
abstract class QuoteFailure with _$QuoteFailure {
    const factory QuoteFailure.unexpected() = _Unexpected;
    const factory QuoteFailure.insufficientPermissions() = _InsufficientPermissions;
    const factory QuoteFailure.unableToUpdate() = _UnableToUpdate;
}
