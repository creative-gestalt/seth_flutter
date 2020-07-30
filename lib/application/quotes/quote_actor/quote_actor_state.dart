part of 'quote_actor_bloc.dart';

@freezed
abstract class QuoteActorState with _$QuoteActorState {
    const factory QuoteActorState.initial() = _Initial;
    const factory QuoteActorState.actionInProgress() = _ActionInProgress;
    const factory QuoteActorState.deleteFailure(QuoteFailure quoteFailure) = _DeleteFailure;
    const factory QuoteActorState.deleteSuccess() = _DeleteSuccess;
}
