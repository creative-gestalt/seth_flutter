part of 'quote_bloc.dart';

abstract class QuoteEvent extends Equatable {
  const QuoteEvent();
}

class GetQuotes extends QuoteEvent {
  final String uid;

  const GetQuotes(this.uid);

  @override
  List<Object> get props => [uid];
}
