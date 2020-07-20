import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:seth_flutter/src/screens/0_home/home_screen.dart';
import 'package:seth_flutter/src/screens/1_search/search_screen.dart';
import 'package:seth_flutter/src/screens/2_exercises/exercises_screen.dart';
import 'package:seth_flutter/src/screens/3_practice/practice_screen.dart';
import 'package:seth_flutter/src/screens/4_saved/saved_screen.dart';
import 'package:seth_flutter/src/screens/5_about/about_screen.dart';

class SideDrawer extends StatelessWidget {
  final String uid;
  final dbRef = FirebaseDatabase.instance.reference().child('users');

  SideDrawer({@required this.uid});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: dbRef.orderByKey().equalTo(uid).once(),
        builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());

          Map<dynamic, dynamic> values = snapshot.data.value;
          var username = values[uid]['username'];
          var email = values[uid]['email'];
          print(values);

          return Drawer(
            child: Container(
              color: Colors.black,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text(username),
                    accountEmail: Text(email),
                    decoration: BoxDecoration(
                      color: Colors.orange.withAlpha(200),
                    ),
                  ),
                  ListTile(
                      title:
                          Text('Home', style: TextStyle(color: Colors.orange)),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen(uid: uid)));
                      }),
                  ListTile(
                      title: Text('Search',
                          style: TextStyle(color: Colors.orange)),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchScreen(uid: uid)));
                      }),
                  ListTile(
                      title: Text('Exercises',
                          style: TextStyle(color: Colors.orange)),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ExercisesScreen(uid: uid)));
                      }),
                  ListTile(
                      title: Text('Practice Elements',
                          style: TextStyle(color: Colors.orange)),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PracticeScreen(uid: uid)));
                      }),
                  ListTile(
                      title:
                          Text('Saved', style: TextStyle(color: Colors.orange)),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SavedScreen(uid: uid)));
                      }),
                  ListTile(
                      title: Text('About Seth',
                          style: TextStyle(color: Colors.orange)),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutScreen()));
                      }),
                  const Divider(
                    height: 15,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                  ),
                  ListTile(
                    title: Text('Settings',
                        style: TextStyle(color: Colors.orange)),
                    onTap: () {
                      Navigator.pop(context);
//              Navigator.push(context,
//                  MaterialPageRoute(builder: (context) => SettingsScreen()));
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
