import 'package:flutter/material.dart';

class CustomScrollBody extends StatelessWidget {
  final Future quotes;

  CustomScrollBody({@required this.quotes});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: quotes,
      builder: (context, snapshot) {
        Widget quoteListSliver;
        (snapshot.hasData)
            ? quoteListSliver = SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                        child: ListTile(
                          title: Text(snapshot.data[index].quote),
                          subtitle: Text(snapshot.data[index].book),
                        ),
                      ),
                    );
                  },
                  childCount: snapshot.data.length,
                ),
              )
            : quoteListSliver =
                SliverToBoxAdapter(
                    child: new Theme(
                        data: Theme.of(context).copyWith(accentColor: Colors.orange),
                        child: LinearProgressIndicator()));

        return quoteListSliver;
      },
    );
  }
}
