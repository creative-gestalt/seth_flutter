import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/search/search_actor/search_actor_bloc.dart';
import 'package:seth_flutter/application/search/search_form/search_form_bloc.dart';
import 'package:seth_flutter/application/search/search_watcher/search_watcher_bloc.dart';
import 'package:seth_flutter/injection.dart';
import 'package:seth_flutter/presentation/core/widgets/flushbar_custom.dart';
import 'package:seth_flutter/presentation/search/widgets/search_bar_widget.dart';
import 'package:seth_flutter/presentation/search/widgets/search_overview_body_widget.dart';

class SearchOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SearchActorBloc>(
          create: (context) => getIt<SearchActorBloc>(),
        ),
        BlocProvider<SearchWatcherBloc>(
          create: (context) => getIt<SearchWatcherBloc>(),
        ),
        BlocProvider<SearchFormBloc>(
          create: (context) => getIt<SearchFormBloc>(),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SearchActorBloc, SearchActorState>(
            listener: (context, state) {
              state.maybeMap(
                actionInProgress: (state) => {},
                tooManyResults: (state) {
                  FlushBarCustom(
                    context,
                    Colors.cyan[500],
                    Icon(Icons.info_outline, color: Colors.cyan[500]),
                    'More than 300 hits',
                  );
                },
                orElse: () {},
              );
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
