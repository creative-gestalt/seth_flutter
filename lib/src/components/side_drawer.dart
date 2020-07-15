import 'package:flutter/material.dart';
import 'package:seth_flutter/src/screens/0_home/home_screen.dart';
import 'package:seth_flutter/src/screens/1_search/search_screen.dart';
import 'package:seth_flutter/src/screens/2_exercises/exercises_screen.dart';
import 'package:seth_flutter/src/screens/3_practice/practice_screen.dart';
import 'package:seth_flutter/src/screens/4_saved/saved_screen.dart';
import 'package:seth_flutter/src/screens/5_about/about_screen.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.brightness_low,
                      color: Colors.black,
                      size: 22.0,
                    ),
                    Spacer(),
                    Text(
                      'Seth exercises, tools, and notes',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.orange.withAlpha(150),
            ),
          ),
          ListTile(
              title: Text('Home', style: TextStyle(color: Colors.orange)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }),
          ListTile(
              title: Text('Search', style: TextStyle(color: Colors.orange)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              }),
          ListTile(
              title: Text('Exercises', style: TextStyle(color: Colors.orange)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExercisesScreen()));
              }),
          ListTile(
              title: Text('Practice Elements',
                  style: TextStyle(color: Colors.orange)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PracticeScreen()));
              }),
          ListTile(
              title: Text('Saved', style: TextStyle(color: Colors.orange)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SavedScreen()));
              }),
          ListTile(
              title: Text('About Seth', style: TextStyle(color: Colors.orange)),
              onTap: () {
                Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutScreen()));
              }),
          const Divider(
            color: Colors.black,
            height: 15,
            thickness: 2,
            indent: 0,
            endIndent: 0,
          ),
          ListTile(
            title: Text('Settings', style: TextStyle(color: Colors.orange)),
            onTap: () {
              Navigator.pop(context);
//              Navigator.push(context,
//                  MaterialPageRoute(builder: (context) => SettingsScreen()));
            },
          ),
        ],
      ),
    );
  }
}
