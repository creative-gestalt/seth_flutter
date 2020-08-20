import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'search_actor_event.dart';
part 'search_actor_state.dart';
part 'search_actor_bloc.freezed.dart';

@injectable
class SearchActorBloc extends Bloc<SearchActorEvent, SearchActorState> {
  SearchActorBloc() : super(const SearchActorState.initial());

  @override
  Stream<SearchActorState> mapEventToState(
    SearchActorEvent event,
  ) async* {
    yield* event.map(
      resultCounted: (e) async* {
        yield const SearchActorState.tooManyResults();
      },
    );
  }
}
