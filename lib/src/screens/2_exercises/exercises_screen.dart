import 'package:flutter/material.dart';
import 'package:seth_flutter/src/components/side_drawer.dart';
import 'package:seth_flutter/src/utils/db_provider.dart';
import 'package:seth_flutter/src/widgets/custom_grouped_list.dart';

class ExercisesScreen extends StatefulWidget {
  @override
  _ExercisesScreenState createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  Future exerciseFuture;

  @override
  void initState() {
    super.initState();
    exerciseFuture = _getExercises();
  }

  _getExercises() async {
    return await DBProvider.db.getExercises();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercises',
            style: new TextStyle(color: Colors.orange)),
        iconTheme: IconThemeData(color: Colors.orange),
      ),
      body: CustomGroupedList(object: exerciseFuture),
      drawer: SideDrawer(),
    );
  }
}
