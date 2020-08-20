import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/quotes/quote_actor/quote_actor_bloc.dart';
import 'package:seth_flutter/application/quotes/quote_watcher/quote_watcher_bloc.dart';
import 'package:seth_flutter/presentation/quotes/quotes_overview/widgets/quotes_overview_body_widget.dart';
import 'package:seth_flutter/presentation/routes/router.gr.dart';
import 'package:seth_flutter/injection.dart';

class QuotesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<QuoteWatcherBloc>(
          create: (context) => getIt<QuoteWatcherBloc>()
            ..add(const QuoteWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<QuoteActorBloc>(
          create: (context) => getIt<QuoteActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<QuoteActorBloc, QuoteActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: state.quoteFailure.map(
                      unexpected: (_) => 'Unexpected error occurred while deleting, please contact support.',
                      insufficientPermissions: (_) => 'Insufficient permissions ❌',
                      unableToUpdate: (_) => 'Impossible error',
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Quotes'),
          ),
          body: QuotesOverviewBody(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              ExtendedNavigator.of(context).pushQuoteFormPage(editedQuote: null);
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
