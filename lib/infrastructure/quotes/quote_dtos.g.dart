// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuoteDto _$_$_QuoteDtoFromJson(Map<String, dynamic> json) {
  return _$_QuoteDto(
    body: json['body'] as String,
    book: json['book'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_QuoteDtoToJson(_$_QuoteDto instance) =>
    <String, dynamic>{
      'body': instance.body,
      'book': instance.book,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
