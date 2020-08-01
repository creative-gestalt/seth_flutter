import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seth_flutter/domain/core/value_objects.dart';
import 'package:seth_flutter/domain/quotes/quote.dart';
import 'package:seth_flutter/domain/quotes/value_objects.dart';

part 'quote_dtos.freezed.dart';
part 'quote_dtos.g.dart';

@freezed
abstract class QuoteDto implements _$QuoteDto {
  const factory QuoteDto({
    @JsonKey(ignore: true) String id,
    @required String body,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _QuoteDto;

  const QuoteDto._();

  factory QuoteDto.fromDomain(Quote quote) {
    return QuoteDto(
      id: quote.id.getOrCrash(),
      body: quote.body.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Quote toDomain() {
    return Quote(
      id: UniqueId.fromUniqueString(id),
      body: QuoteBody(body)
    );
  }

  factory QuoteDto.fromJson(Map<String, dynamic> json) =>
      _$QuoteDtoFromJson(json);

  factory QuoteDto.fromFirestore(DocumentSnapshot doc) {
    return QuoteDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
