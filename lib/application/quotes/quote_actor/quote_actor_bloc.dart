import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:seth_flutter/domain/quotes/i_quotes_repository.dart';
import 'package:seth_flutter/domain/quotes/quote.dart';
import 'package:seth_flutter/domain/quotes/quote_failure.dart';

part 'quote_actor_event.dart';
part 'quote_actor_state.dart';
part 'quote_actor_bloc.freezed.dart';

@injectable
class QuoteActorBloc extends Bloc<QuoteActorEvent, QuoteActorState> {
  final IQuoteRepository _quoteRepository;

  QuoteActorBloc(this._quoteRepository)
      : super(const QuoteActorState.initial());

  @override
  Stream<QuoteActorState> mapEventToState(
    QuoteActorEvent event,
  ) async* {
    yield const QuoteActorState.actionInProgress();
    final possibleFailure = await _quoteRepository.delete(event.quote);
    yield possibleFailure.fold(
      (f) => QuoteActorState.deleteFailure(f),
      (_) => const QuoteActorState.deleteSuccess(),
    );
  }
}
