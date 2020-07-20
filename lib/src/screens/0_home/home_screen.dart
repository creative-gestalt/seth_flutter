import 'package:flutter/material.dart';
import 'file:///C:/Users/thebb/github/seth_flutter/lib/src/widgets/side_drawer.dart';
import 'package:seth_flutter/src/widgets/custom_card.dart';
import 'package:seth_flutter/src/widgets/custom_sliver_app_bar.dart';
import 'package:seth_flutter/src/screens/1_search/search_screen.dart';
import 'package:seth_flutter/src/screens/2_exercises/exercises_screen.dart';
import 'package:seth_flutter/src/screens/3_practice/practice_screen.dart';
import 'package:seth_flutter/src/screens/4_saved/saved_screen.dart';
import 'package:seth_flutter/src/screens/5_about/about_screen.dart';

class HomeScreen extends StatefulWidget {
  final String uid;

  HomeScreen({this.uid});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get uid => widget.uid;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Widget card(context, text, destination) {
    return Card(
      color: Colors.orange,
      child: InkWell(
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => destination,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(
            height: 200.0,
            customTitle: 'You Create Your Own Reality - Seth',
            bgColor: Colors.black,
            leading: true,
          ),
          SliverGrid.count(
            childAspectRatio: 1,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: [
              CustomCard(
                  text: 'Search', destination: SearchScreen(uid: uid)),
              CustomCard(
                  text: 'Exercises',
                  destination: ExercisesScreen(uid: uid)),
              CustomCard(
                  text: 'Practice Elements',
                  destination: PracticeScreen(uid: uid)),
              CustomCard(
                  text: 'Saved Quotes',
                  destination: SavedScreen(uid: uid)),
              CustomCard(text: 'About Seth', destination: AboutScreen()),
              CustomCard(text: 'Settings', destination: HomeScreen()),
            ],
            crossAxisCount: 3,
          ),
        ],
      ),
      drawer: SideDrawer(uid: uid),
    );
  }
}
