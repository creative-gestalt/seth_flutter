part of 'quote_actor_bloc.dart';

@freezed
abstract class QuoteActorEvent with _$QuoteActorEvent {
    const factory QuoteActorEvent.deleted(Quote quote) = _Deleted;
}
