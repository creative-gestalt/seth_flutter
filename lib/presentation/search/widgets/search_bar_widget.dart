import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/search/search_form/search_form_bloc.dart';
import 'package:seth_flutter/application/search/search_watcher/search_watcher_bloc.dart';
import 'package:seth_flutter/domain/search/value_objects.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        SearchInputBox(),
        SizedBox(width: 10),
        SearchButton(),
      ],
    );
  }
}

class SearchInputBox extends StatelessWidget {
  const SearchInputBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.zero,
        height: 40,
        child: TextFormField(
          autocorrect: true,
          onChanged: (value) => context
              .bloc<SearchFormBloc>()
              .add(SearchFormEvent.inputChanged(value)),
          onFieldSubmitted: (value) {
            if (value != '') {
              context.bloc<SearchWatcherBloc>().add(
                    SearchWatcherEvent.searchStarted(SearchInput(value)),
                  );
            }
          },
          validator: (_) =>
              context.bloc<SearchFormBloc>().state.searchInput.value.fold(
                    (f) => f.maybeMap(
                        empty: (_) => 'Cannot be empty', orElse: () => null),
                    (_) => null,
                  ),
          decoration: const InputDecoration(labelText: 'search'),
        ),
      ),
    );
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      child: OutlineButton(
        textColor: Theme.of(context).primaryTextTheme.headline6.color,
        onPressed: () {
          FocusScope.of(context).requestFocus(FocusNode());
          if (context.bloc<SearchFormBloc>().state.searchInput !=
              SearchInput('')) {
            context.bloc<SearchWatcherBloc>().add(
                  SearchWatcherEvent.searchStarted(
                      context.bloc<SearchFormBloc>().state.searchInput),
                );
          }
        },
        child: const Text(
          '✔',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
