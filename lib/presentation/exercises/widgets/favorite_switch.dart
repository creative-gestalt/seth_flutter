import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:seth_flutter/application/exercises/exercise_watcher/exercise_watcher_bloc.dart';

class FavoriteSwitch extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final toggleState = useState(false);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkResponse(
        onTap: () {
          toggleState.value = !toggleState.value;
          context.bloc<ExerciseWatcherBloc>().add(
                toggleState.value
                    ? const ExerciseWatcherEvent.watchFavoriteStarted()
                    : const ExerciseWatcherEvent.watchAllStarted(),
              );
        },
        child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (child, animation) => ScaleTransition(
                  scale: animation,
                  child: child,
                ),
            child: toggleState.value
                ? Icon(
                    Icons.line_style,
                    key: const Key('all'),
                  )
                : Icon(
                    Icons.filter_list,
                    key: const Key('filter'),
                  )),
      ),
    );
  }
}
