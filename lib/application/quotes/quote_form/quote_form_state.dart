part of 'quote_form_bloc.dart';

@freezed
abstract class QuoteFormState with _$QuoteFormState {
    const factory QuoteFormState({
      @required Quote quote,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<Either<QuoteFailure, Unit>> saveFailureOrSuccessOption,
}) = _QuoteFormState;

    factory QuoteFormState.initial() => QuoteFormState(
      quote: Quote.empty(),
      showErrorMessages: false,
      isEditing: false,
      isSaving: false,
      saveFailureOrSuccessOption: none(),
    );
}
