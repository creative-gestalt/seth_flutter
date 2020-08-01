part of 'quote_form_bloc.dart';

@freezed
abstract class QuoteFormEvent with _$QuoteFormEvent {
    const factory QuoteFormEvent.initialized(Option<Quote> initialQuoteOption) = _Initialized;
    const factory QuoteFormEvent.bodyChanged(String bodyStr) = _BodyChanged;
    const factory QuoteFormEvent.saved() = _Saved;
}
