import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/search/search_form/search_form_bloc.dart';
import 'package:seth_flutter/application/search/search_watcher/search_watcher_bloc.dart';
import 'package:seth_flutter/injection.dart';
import 'package:seth_flutter/presentation/search/widgets/search_bar_widget.dart';
import 'package:seth_flutter/presentation/search/widgets/search_overview_body_widget.dart';

class SearchOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SearchWatcherBloc>(
          create: (context) => getIt<SearchWatcherBloc>(),
        ),
        BlocProvider<SearchFormBloc>(
          create: (context) => getIt<SearchFormBloc>(),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SearchWatcherBloc, SearchWatcherState>(
            listener: (context, state) {
              state.maybeMap(orElse: () {});
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Search'),
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: true,
                title: SearchBar(),
                automaticallyImplyLeading: false,
              ),
              SearchOverviewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
