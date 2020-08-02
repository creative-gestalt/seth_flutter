import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/exercises/exercise_watcher/exercise_watcher_bloc.dart';
import 'package:seth_flutter/presentation/quotes/quotes_overview/widgets/critical_failure_display_widget.dart';

class ExercisesOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseWatcherBloc, ExerciseWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
          const Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final exercise = state.exercises[index];
                return Card(child: Text(exercise.name),);
              },
              itemCount: state.exercises.length,
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
