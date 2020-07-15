import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:seth_flutter/src/components/directions/directions_screen.dart';

class CustomGroupedList extends StatelessWidget {
  final Future object;
  final _saved = <String>{};

  CustomGroupedList({@required this.object});

  Widget _buildRow(String title) {
    final alreadySaved = _saved.contains(title);
    return ListTile(
      title: Text(title),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.orangeAccent : Null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: object,
      builder: (context, snapshot) {
        if (!snapshot.hasData)
          return Center(child: CircularProgressIndicator());

        return GroupedListView<dynamic, String>(
          elements: snapshot.data.toList(),
          groupBy: (element) => element.book,
          groupSeparatorBuilder: (String groupByValue) => Container(
            padding: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
            child: Text(
              groupByValue,
              style: new TextStyle(
                fontSize: 24.0,
                color: Colors.orange,
              ),
            ),
          ),
          itemBuilder: (context, dynamic element) => Card(
            margin: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
            child: InkWell(
              splashColor: Colors.orange.withAlpha(30),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DirectionsScreen(
                          name: element.name, directions: element.directions)),
                );
              },
              child: _buildRow(element.name),
            ),
          ),
          order: GroupedListOrder.ASC,
        );
      },
    );
  }
}
