import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/exercises/exercise_watcher/exercise_watcher_bloc.dart';
import 'package:seth_flutter/presentation/exercises/widgets/exercises_overview_body_widget.dart';
import 'package:seth_flutter/injection.dart';

class ExercisesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExerciseWatcherBloc>(
          create: (context) => getIt<ExerciseWatcherBloc>()
          ..add(const ExerciseWatcherEvent.watchAllStarted()),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Exercises'),
        ),
        body: ExercisesOverviewBody(),
      ),
    );
  }
}
