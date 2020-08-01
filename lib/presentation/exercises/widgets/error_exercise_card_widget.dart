import 'package:flutter/material.dart';
import 'package:seth_flutter/domain/exercises/exercise.dart';

class ErrorExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ErrorExerciseCard({Key key, @required this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: <Widget>[
            Text(
              'Invalid note, please contact support',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2
                  .copyWith(fontSize: 20),
            ),
            const SizedBox(height: 2),
            Text(
              'Details for nerds',
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            Text(
              exercise.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
