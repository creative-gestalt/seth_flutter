import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:seth_flutter/application/exercises/exercise_actor/exercise_actor_bloc.dart';
import 'package:seth_flutter/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/exercises/exercise_watcher/exercise_watcher_bloc.dart';
import 'package:seth_flutter/presentation/exercises/widgets/exercises_overview_body_widget.dart';
import 'package:seth_flutter/presentation/exercises/widgets/favorite_switch.dart';

class ExercisesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExerciseWatcherBloc>(
          create: (context) => getIt<ExerciseWatcherBloc>()..add(
            const ExerciseWatcherEvent.watchAllStarted()),
          ),
        BlocProvider<ExerciseActorBloc>(
          create: (context) => getIt<ExerciseActorBloc>(),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<ExerciseActorBloc, ExerciseActorState>(
            listener: (context, state) {
              state.maybeMap(
                updateFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: state.exerciseFailure.map(
                      unexpected: (_) => 'Unexpected error occurred while updating, please contact support.',
                      unableToUpdate: (_) => 'Unable to update. Lolz.'
                    ),
                  ).show(context);
                },
                addedSuccess: (state) {
                  FlushbarHelper.createSuccess(message: 'Added to favorites').show(context);
                },
                removedSuccess: (state) {
                  FlushbarHelper.createInformation(message: 'Removed from favorites').show(context);
                },
                orElse: () {}
              );
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Exercises'),
            actions: <Widget>[
              FavoriteSwitch(),
            ],
          ),
          body: ExercisesOverviewBody(),
        ),
      ),
    );
  }
}
