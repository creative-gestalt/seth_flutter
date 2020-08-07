import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:seth_flutter/application/exercises/exercise_actor/exercise_actor_bloc.dart';
import 'package:seth_flutter/presentation/routes/router.gr.dart';
import 'package:seth_flutter/infrastructure/core/moor_database.dart';

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCard({Key key, @required this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: InkWell(
        onTap: () {
          ExtendedNavigator.of(context).pushDirectionPage(direction: exercise.direction);
        },
        onLongPress: () {
          final exerciseActorBloc = context.bloc<ExerciseActorBloc>();
          exerciseActorBloc.add(
            ExerciseActorEvent.updated(
              exercise.copyWith(favorite: !exercise.favorite),
            ),
          );
        },
        child: ListTile(
          title: Text(
            exercise.name,
            style: Theme.of(context).primaryTextTheme.bodyText2,
          ),
          trailing: exercise.favorite
            ? Icon(Icons.brightness_1, size: 10, color: Colors.cyan[300])
            : Icon(Icons.panorama_fish_eye, size: 10, color: Colors.cyan[300]),
        ),
      ),
    );
  }
}
