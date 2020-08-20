part of 'search_form_bloc.dart';

@freezed
abstract class SearchFormState with _$SearchFormState {
  const factory SearchFormState({
    @required SearchInput searchInput,
    @required bool showErrorMessages,
    @required bool isSubmitting,
  }) = _SearchFormState;

  factory SearchFormState.initial() => SearchFormState(
        searchInput: SearchInput(''),
        showErrorMessages: false,
        isSubmitting: false,
      );
}
