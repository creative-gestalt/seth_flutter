import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:seth_flutter/src/widgets/directions/directions_screen.dart';
import 'file:///C:/Users/thebb/github/seth_flutter/lib/src/widgets/side_drawer.dart';
import 'package:seth_flutter/src/utils/db_provider.dart';

class PracticeScreen extends StatefulWidget {
  final String uid;

  PracticeScreen({this.uid});

  @override
  _PracticeScreenState createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  List practiceList;
  bool switchState;

  @override
  void initState() {
    super.initState();
    switchState = false;
    _getPractices();
  }

  _getPractices() async {
    return await DBProvider.db.getPractice().then((practiceList) {
      setState(() {
        this.practiceList = practiceList;
      });
    });
  }

  void _updateListView() {
    _getPractices();
  }

  void _changeFavoriteState(context, int id, int value) {
    DBProvider.db.updatePracticeFav(id, value);
    _updateListView();
  }

  void _filterList() {
    switchState = !switchState;
    setState(() {
      if (switchState) {
        this.practiceList =
            practiceList.where((item) => (item.favorite == 1)).toList();
      } else {
        _getPractices();
      }
    });
  }

  _groupTitle(groupByValue) {
    return Container(
      padding: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
      child: Text(
        groupByValue,
        style: new TextStyle(
          fontSize: 24.0,
          color: Colors.orange,
        ),
      ),
    );
  }

  _groupItem(element) {
    final bool favorite = element.favorite == 1 ? true : false;
    return Card(
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
      child: InkWell(
        splashColor: Colors.orange.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DirectionsScreen(
                  name: element.name, directions: element.directions),
            ),
          );
        },
        onLongPress: () {
          if (favorite) {
            _changeFavoriteState(context, element.id, 0);
          } else {
            _changeFavoriteState(context, element.id, 1);
          }
        },
        child: ListTile(
          title: Text(element.name),
          trailing: favorite
              ? Icon(Icons.brightness_1, size: 10, color: Colors.orange)
              : Icon(Icons.panorama_fish_eye,
              size: 10, color: Colors.orange.withAlpha(50)),
        ),
      ),
    );
  }

  _groupedList() {
    if (practiceList == null) return Center(child: CircularProgressIndicator());

    return GroupedListView<dynamic, String>(
      elements: practiceList,
      groupBy: (element) => element.book,
      groupSeparatorBuilder: (String groupByValue) => _groupTitle(groupByValue),
      itemBuilder: (context, dynamic element) => _groupItem(element),
      order: GroupedListOrder.ASC,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice Elements'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: _filterList,
          ),
        ],
      ),
      body: _groupedList(),
      drawer: SideDrawer(uid: widget.uid),
    );
  }
}
