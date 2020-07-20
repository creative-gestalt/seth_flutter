import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:seth_flutter/src/blocs/quotes_bloc.dart';
import 'package:seth_flutter/src/widgets/custom_sliver_app_bar.dart';
import 'package:seth_flutter/src/components/side_drawer.dart';

class SavedScreen extends StatefulWidget {
  final String uid;

  SavedScreen({this.uid});

  @override
  _SavedScreenState createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  get uid => widget.uid;
  List quotes = List();
  DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.reference().child('saved_quotes');
//    bloc.fetchAllQuotes(uid);
  }

  @override
  void dispose() {
//    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(
            height: 100.0,
            customTitle: 'Saved Quotes',
            bgColor: Colors.black,
            leading: true,
          ),
          StreamBuilder(
            stream: dbRef.onValue,
            builder: (context, AsyncSnapshot<Event> snapshot) {
              if (!snapshot.hasData)
                return SliverToBoxAdapter(
                    child: new Theme(
                        data: Theme.of(context)
                            .copyWith(accentColor: Colors.orange),
                        child: LinearProgressIndicator()));

              print('this ran');
              quotes.clear();
              DataSnapshot dataValues = snapshot.data.snapshot;
              Map<dynamic, dynamic> values = dataValues.value;
              values.forEach((key, value) => quotes.add(values[uid]));
              quotes = quotes.expand((element) => element).toList();
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                        child: ListTile(
                          title: Text(quotes[index]),
                        ),
                      ),
                    );
                  },
                  childCount: quotes.length,
                ),
              );
            },
          ),
        ],
      ),
      drawer: SideDrawer(uid: uid),
    );
  }
}
