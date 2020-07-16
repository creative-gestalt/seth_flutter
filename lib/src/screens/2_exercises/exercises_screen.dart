import 'dart:io';

import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:seth_flutter/src/components/directions/directions_screen.dart';
import 'package:seth_flutter/src/components/side_drawer.dart';
import 'package:seth_flutter/src/utils/db_provider.dart';

class ExercisesScreen extends StatefulWidget {
  @override
  _ExercisesScreenState createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  List exerciseList;
  bool switchState;

  @override
  void initState() {
    super.initState();
    switchState = false;
    _getExercises();
  }

  _getExercises() async {
    return await DBProvider.db.getExercises().then((exerciseList) {
      setState(() {
        this.exerciseList = exerciseList;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget groupedList() {
    if (exerciseList == null)
      return Center(child: CircularProgressIndicator());

    return GroupedListView<dynamic, String>(
      elements: exerciseList,
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
          if (favorite) {
            _changeFavoriteState(element.id, 0);
          } else {
            _changeFavoriteState(element.id, 1);
//            Scaffold.of(context).showSnackBar(
//                SnackBar(content: Text('Added to Favorites')));
          }
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
    DBProvider.db.updateExerciseFav(id, value);
    _updateListView();
  }

  void _updateListView() {
    _getExercises();
  }

  void _filterList() {
    switchState = !switchState;
    setState(() {
      if (switchState) {
        this.exerciseList = exerciseList.where((item) => (item.favorite == 1)).toList();
      } else {
        _getExercises();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercises', style: new TextStyle(color: Colors.orange)),
        iconTheme: IconThemeData(color: Colors.orange),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: _filterList,
          )
        ],
      ),
      body: groupedList(),
      drawer: SideDrawer(),
    );
  }
}
