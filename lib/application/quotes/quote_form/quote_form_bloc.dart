import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:seth_flutter/domain/quotes/i_quotes_repository.dart';
import 'package:seth_flutter/domain/quotes/quote.dart';
import 'package:seth_flutter/domain/quotes/quote_failure.dart';
import 'package:seth_flutter/domain/quotes/value_objects.dart';

part 'quote_form_event.dart';
part 'quote_form_state.dart';
part 'quote_form_bloc.freezed.dart';

@injectable
class QuoteFormBloc extends Bloc<QuoteFormEvent, QuoteFormState> {
  final IQuoteRepository _quoteRepository;

  QuoteFormBloc(this._quoteRepository) : super(QuoteFormState.initial());

  @override
  Stream<QuoteFormState> mapEventToState(
    QuoteFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialQuoteOption.fold(
            () => state,
            (initialQuote) =>
                state.copyWith(quote: initialQuote, isEditing: true));
      },
      bodyChanged: (e) async* {
        yield state.copyWith(
          quote: state.quote.copyWith(body: QuoteBody(e.bodyStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<QuoteFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.quote.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _quoteRepository.update(state.quote)
              : await _quoteRepository.create(state.quote);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
