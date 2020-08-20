part of 'search_actor_bloc.dart';

@freezed
abstract class SearchActorState with _$SearchActorState {
    const factory SearchActorState.initial() = _Initial;
    const factory SearchActorState.actionInProgress() = _ActionInProgress;
    const factory SearchActorState.loaded() = _Loaded;
    const factory SearchActorState.tooManyResults() = _TooManyResults;
}
