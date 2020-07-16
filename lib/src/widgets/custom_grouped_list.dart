import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:seth_flutter/src/components/directions/directions_screen.dart';
import 'package:seth_flutter/src/utils/db_provider.dart';

class CustomGroupedList extends StatelessWidget {
  final List object;
  final String table;

  CustomGroupedList({@required this.object, @required this.table});

  @override
  Widget build(BuildContext context) {
    if (object == null) return Center(child: CircularProgressIndicator());
    return GroupedListView<dynamic, String>(
      elements: object,
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
        child: _buildRow(context, element),
      ),
      order: GroupedListOrder.ASC,
    );
  }

  Widget _buildRow(context, element) {
    final bool favorite = element.favorite == 1 ? true : false;
    return InkWell(
      splashColor: Colors.orange.withAlpha(30),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DirectionsScreen(
                  name: element.name, directions: element.directions)),
        );
      },
      onLongPress: () {
        setState() {
          if (favorite) {
            _changeFavoriteState(table, element.id, 0);
          } else {
            _changeFavoriteState(table, element.id, 1);
          }
        }
      },
      child: ListTile(
        title: Text(element.name),
        trailing: favorite
            ? Icon(Icons.brightness_1, size: 10, color: Colors.orange)
            : Icon(Icons.panorama_fish_eye,
                size: 10, color: Colors.orange.withAlpha(100)),
      ),
    );
  }

  void _changeFavoriteState(String table, int id, int value) {
    if (table == 'exercises') {
      DBProvider.db.updateExerciseFav(id, value);
      _updateListView();
    } else {
      DBProvider.db.updatePracticeFav(id, value);
      _updateListView();
    }
  }

  void _updateListView() {}
}
