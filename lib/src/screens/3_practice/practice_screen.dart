import 'package:flutter/material.dart';
import 'package:seth_flutter/src/components/side_drawer.dart';
import 'package:seth_flutter/src/utils/db_provider.dart';
import 'package:seth_flutter/src/widgets/custom_grouped_list.dart';

class PracticeScreen extends StatefulWidget {
  @override
  _PracticeScreenState createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  Future practiceFuture;

  @override
  void initState() {
    super.initState();
    practiceFuture = _getPractices();
  }

  _getPractices() async {
    return await DBProvider.db.getPractice();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice Elements',
            style: new TextStyle(color: Colors.orange)),
        iconTheme: IconThemeData(color: Colors.orange),
      ),
      body: CustomGroupedList(object: practiceFuture),
      drawer: SideDrawer(),
    );
  }
}
