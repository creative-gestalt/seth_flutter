import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:seth_flutter/application/exercises/exercise_watcher/exercise_watcher_bloc.dart';
import 'package:seth_flutter/infrastructure/core/moor_database.dart';
import 'package:seth_flutter/presentation/exercises/widgets/exercise_card_widget.dart';
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
            return GroupedListView<Exercise, String>(
              elements: state.exercises,
              groupBy: (element) => element.book,
              groupSeparatorBuilder: (String groupByValue) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  groupByValue,
                  style: Theme.of(context).primaryTextTheme.headline5,
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              itemBuilder: (context, Exercise element) {
                return ExerciseCard(
                  exercise: element,
                );
              },
              order: GroupedListOrder.ASC,
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
