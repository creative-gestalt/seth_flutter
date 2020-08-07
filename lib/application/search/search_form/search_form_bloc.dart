import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:seth_flutter/domain/search/value_objects.dart';

part 'search_form_event.dart';
part 'search_form_state.dart';
part 'search_form_bloc.freezed.dart';

@injectable
class SearchFormBloc extends Bloc<SearchFormEvent, SearchFormState> {
  SearchFormBloc() : super(SearchFormState.initial());

  @override
  Stream<SearchFormState> mapEventToState(
    SearchFormEvent event,
  ) async* {
    yield* event.map(
      inputChanged: (e) async* {
        yield state.copyWith(
          searchInput: SearchInput(e.inputStr),
        );
      },
    );
  }
}
