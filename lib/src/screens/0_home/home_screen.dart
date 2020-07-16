import 'package:flutter/material.dart';
import 'package:seth_flutter/src/components/side_drawer.dart';
import 'package:seth_flutter/src/widgets/custom_card.dart';
import 'package:seth_flutter/src/widgets/custom_scroll_app_bar.dart';
import 'package:seth_flutter/src/screens/1_search/search_screen.dart';
import 'package:seth_flutter/src/screens/2_exercises/exercises_screen.dart';
import 'package:seth_flutter/src/screens/3_practice/practice_screen.dart';
import 'package:seth_flutter/src/screens/4_saved/saved_screen.dart';
import 'package:seth_flutter/src/screens/5_about/about_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          CustomScrollAppBar(customTitle: 'Home'),
          SliverGrid.count(
            childAspectRatio: 1,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: [
              Container(),
              Container(),
              Container(),
              Container(),
              Container(),
              CustomCard(text: 'Search', destination: SearchScreen()),
              CustomCard(text: 'Exercises', destination: ExercisesScreen()),
              Container(),
              Container(),
              CustomCard(text: 'Practice Elements', destination: PracticeScreen()),
              CustomCard(text: 'Saved Quotes', destination: SavedScreen()),
              Container(),
              Container(),
              CustomCard(text: 'About Seth', destination: AboutScreen()),
              CustomCard(text: 'Settings', destination: HomeScreen()),
              Container(),
              Container(),
              Container(),
              Container(),
              Container(),
              Container(),
              Container(),
            ],
            crossAxisCount: 4,
          ),
        ],
      ),
      drawer: SideDrawer(),
    );
  }
}
