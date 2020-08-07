import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/search/search_watcher/search_watcher_bloc.dart';
import 'package:seth_flutter/presentation/quotes/quotes_overview/widgets/critical_failure_display_widget.dart';
import 'package:seth_flutter/presentation/search/widgets/search_card_widget.dart';

class SearchOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchWatcherBloc, SearchWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => SliverToBoxAdapter(child: Container()),
          loadInProgress: (_) => SliverToBoxAdapter(
              child: Container(
                  height: 200,
                  child: const Center(child: CircularProgressIndicator()))),
          loadSuccess: (state) {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final item = state.searchItems[index];
                  if (item.failureOption.isSome()) {
                    return const Card();
                  } else {
                      return SearchCard(search: item);
                  }
                },
                childCount: state.searchItems.size,
              ),
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
