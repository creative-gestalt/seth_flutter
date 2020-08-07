import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:seth_flutter/domain/search/search.dart';
import 'package:seth_flutter/domain/search/search_item.dart';
import 'package:seth_flutter/presentation/core/theme/colors.dart';

class SearchCard extends StatelessWidget {
  final Search search;

  const SearchCard({Key key, @required this.search}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              search.book.getOrCrash(),
              style: Theme.of(context).primaryTextTheme.headline5,
            ),
            if (search.items.length > 0) ...[
              const SizedBox(height: 4),
              Column(
                children: <Widget>[
                  ...search.items
                      .getOrCrash()
                      .map(
                        (item) => ItemDisplay(item: item),
                      )
                      .iter,
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class ItemDisplay extends StatelessWidget {
  final SearchItem item;

  const ItemDisplay({
    Key key,
    @required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: c08dp,
      child: InkWell(
        onTap: () {
          // TODO: do the adding shit here
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(item.item.getOrCrash()),
        ),
      ),
    );
  }
}
