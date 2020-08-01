import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/quotes/quote_watcher/quote_watcher_bloc.dart';
import 'package:seth_flutter/presentation/quotes/quotes_overview/widgets/critical_failure_display_widget.dart';
import 'package:seth_flutter/presentation/quotes/quotes_overview/widgets/error_quote_card_widget.dart';
import 'package:seth_flutter/presentation/quotes/quotes_overview/widgets/quote_card_widget.dart';

class QuotesOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuoteWatcherBloc, QuoteWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final quote = state.quotes[index];
                if (quote.failureOption.isSome()) {
                  return ErrorQuoteCard(
                    quote: quote,
                  );
                } else {
                  return QuoteCard(
                    quote: quote,
                  );
                }
              },
              itemCount: state.quotes.size,
            );
          },
          loadFailure: (state) {
            return const CriticalFailureDisplay();
          },
        );
      },
    );
  }
}
