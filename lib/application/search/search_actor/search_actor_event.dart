part of 'search_actor_bloc.dart';

@freezed
abstract class SearchActorEvent with _$SearchActorEvent {
    const factory SearchActorEvent.resultCounted() = _ResultCounted;
}
