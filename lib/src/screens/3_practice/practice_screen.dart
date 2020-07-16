import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:seth_flutter/src/components/directions/directions_screen.dart';
import 'package:seth_flutter/src/components/side_drawer.dart';
import 'package:seth_flutter/src/utils/db_provider.dart';

class PracticeScreen extends StatefulWidget {
  @override
  _PracticeScreenState createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  List practiceList;

  @override
  void initState() {
    super.initState();
    _getPractices();
  }

  _getPractices() async {
    return await DBProvider.db.getPractice().then((practiceList) {
      setState(() {
        this.practiceList = practiceList;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget groupedList() {
    if (practiceList == null)
          return Center(child: CircularProgressIndicator());

        return GroupedListView<dynamic, String>(
          elements: practiceList,
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
            child: _buildRow(element),
          ),
          order: GroupedListOrder.ASC,
        );
  }

  Widget _buildRow(element) {
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
        setState(() {
          if (favorite) {
            _changeFavoriteState(element.id, 0);
          } else {
            _changeFavoriteState(element.id, 1);
          }
        });
      },
      child: ListTile(
        title: Text(element.name),
        trailing: favorite
            ? Icon(Icons.brightness_1, size: 10, color: Colors.orange)
            : Icon(Icons.panorama_fish_eye,
                size: 10, color: Colors.orange.withAlpha(50)),
      ),
    );
  }

  void _changeFavoriteState(int id, int value) {
    DBProvider.db.updatePracticeFav(id, value);
    _updateListView();
  }

  void _updateListView() {
    _getPractices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice Elements',
            style: new TextStyle(color: Colors.orange)),
        iconTheme: IconThemeData(color: Colors.orange),
      ),
      body: groupedList(),
      drawer: SideDrawer(),
    );
  }
}
