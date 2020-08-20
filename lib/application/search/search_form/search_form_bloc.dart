import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:seth_flutter/domain/search/i_search_repository.dart';
import 'package:seth_flutter/domain/search/search.dart';
import 'package:seth_flutter/domain/search/search_failure.dart';
import 'package:seth_flutter/domain/search/value_objects.dart';

part 'search_form_event.dart';
part 'search_form_state.dart';
part 'search_form_bloc.freezed.dart';

@injectable
class SearchFormBloc extends Bloc<SearchFormEvent, SearchFormState> {
  final ISearchRepository _searchRepository;

  SearchFormBloc(this._searchRepository) : super(SearchFormState.initial());

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
      searchPressed: (e) async* {
        final isInputValid = state.searchInput.isValid();
        if (isInputValid) {
          yield state.copyWith(
            isSubmitting: true,
          );
            print('submitting');
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
        );
            print('error messages');
      },
    );
  }
}
