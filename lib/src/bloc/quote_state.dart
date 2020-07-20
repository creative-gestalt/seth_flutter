part of 'quote_bloc.dart';

abstract class QuoteState extends Equatable {
  const QuoteState();
}

class QuoteInitial extends QuoteState {
  const QuoteInitial();

  @override
  List<Object> get props => [];
}

class QuoteLoading extends QuoteState {
  const QuoteLoading();

  @override
  List<Object> get props => [];
}

class QuoteLoaded extends QuoteState {
  final Quote quotes;
  const QuoteLoaded(this.quotes);

  @override
  List<Object> get props => [quotes];
}

class QuoteError extends QuoteState {
  final String message;
  const QuoteError(this.message);

  @override
  List<Object> get props => [message];
}
