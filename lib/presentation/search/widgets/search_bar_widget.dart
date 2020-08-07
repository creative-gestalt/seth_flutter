import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/search/search_form/search_form_bloc.dart';
import 'package:seth_flutter/application/search/search_watcher/search_watcher_bloc.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchFormBloc, SearchFormState>(
      builder: (context, state) {
        return Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.zero,
                height: 40,
                child: TextFormField(
                  autocorrect: true,
                  onChanged: (value) => context
                      .bloc<SearchFormBloc>()
                      .add(SearchFormEvent.inputChanged(value)),
                  validator: (_) => context
                      .bloc<SearchFormBloc>()
                      .state
                      .searchInput
                      .value
                      .fold(
                        (f) => f.maybeMap(
                            exceedingLength: (_) => 'Too many characters',
                            orElse: () => null),
                        (_) => null,
                      ),
                  decoration: const InputDecoration(labelText: 'search'),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 30,
              height: 30,
              child: FloatingActionButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  context
                      .bloc<SearchWatcherBloc>()
                      .add(SearchWatcherEvent.getAllStarted(state.searchInput));
                },
                child: const Text('✔'),
              ),
            ),
          ],
        );
      },
    );
  }
}
