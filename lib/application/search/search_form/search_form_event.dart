part of 'search_form_bloc.dart';

@freezed
abstract class SearchFormEvent with _$SearchFormEvent {
    const factory SearchFormEvent.inputChanged(String inputStr) = InputChanged;
    const factory SearchFormEvent.searchPressed() = SearchPressed;
}
