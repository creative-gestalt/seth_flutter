import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/quotes/quote_form/quote_form_bloc.dart';
import 'package:seth_flutter/domain/quotes/quote.dart';
import 'package:seth_flutter/injection.dart';
import 'package:seth_flutter/presentation/core/widgets/flushbar_custom.dart';
import 'package:seth_flutter/presentation/routes/router.gr.dart';

class QuoteFormPage extends StatelessWidget {
  final Quote editedQuote;

  const QuoteFormPage({
    Key key,
    @required this.editedQuote,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<QuoteFormBloc>()
        ..add(QuoteFormEvent.initialized(optionOf(editedQuote))),
      // BlocConsumer allows listening and building.
      child: BlocConsumer<QuoteFormBloc, QuoteFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            // Below is when None() is passed.
            () => {},
            // Below is when Some() is passed.
            (either) => {
              either.fold(
                // Failure option
                (failure) => FlushBarCustom(
                  context,
                  Colors.red[900],
                  Icon(Icons.info_outline, color: Colors.cyan[500]),
                  failure.map(
                    // TODO: Localization could go here
                    unexpected: (_) => 'Unexpected',
                    insufficientPermissions: (_) => 'Insufficient permissions.',
                    unableToUpdate: (_) =>
                        'Could not update the quote. Was it deleted from another device?',
                  ),
                ),
                // Success option
                (_) {
                  // FlushBar counts as a route.
                  // Pop cannot be used here in case FlushBar is visible.
                  ExtendedNavigator.of(context).popUntil(
                    (route) => route.settings.name == Routes.quotesOverviewPage,
                  );
                },
              ),
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const QuoteFormPageScaffold(),
              SavingInProgressOverlay(
                isSaving: state.isSaving,
              ),
            ],
          );
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({
    Key key,
    this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              Text(
                '\nSaving',
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.orange[300],
                      fontSize: 16,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuoteFormPageScaffold extends StatelessWidget {
  const QuoteFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: BlocBuilder<QuoteFormBloc, QuoteFormState>(
            buildWhen: (p, c) =>
                p.isEditing != c.isEditing, // previous, current
            builder: (context, state) {
              return Text(state.isEditing ? 'Edit quote' : 'Create quote');
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                context.bloc<QuoteFormBloc>().add(const QuoteFormEvent.saved());
              },
            )
          ]),
    );
  }
}
