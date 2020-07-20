import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/src/bloc/quote_bloc.dart';
import 'package:seth_flutter/src/screens/4_saved/new_saved_screen.dart';
import 'package:seth_flutter/src/widgets/custom_sliver_app_bar.dart';
import 'package:seth_flutter/src/widgets/side_drawer.dart';

class SavedScreen extends StatefulWidget {
  final String uid;

  SavedScreen({this.uid});

  @override
  _SavedScreenState createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  get uid => widget.uid;

  @override
  void initState() {
    super.initState();
    triggerUid(context, uid);
  }

  @override
  void dispose() {
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
          BlocListener<QuoteBloc, QuoteState>(
            listener: (context, state) {
              if (state is QuoteError) {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                  ),
                );
              }
            },
            child: BlocBuilder<QuoteBloc, QuoteState>(
                // ignore: missing_return
                builder: (context, state) {
              if (state is QuoteInitial) {
                return buildInitial();
              } else if (state is QuoteLoading) {
                return buildLoading();
              } else if (state is QuoteLoaded) {
                if (state.quotes.quotes.length != 0)
                  return buildListWithData(context, state.quotes);
                return buildInitial();
              }
            }),
          ),
        ],
      ),
      drawer: SideDrawer(uid: uid),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewSavedScreen(),
            ),
          );
        },
      ),
    );
  }

  Widget buildInitial() {
    return SliverToBoxAdapter(
      child: Center(
        child: Text('Nothing Here. . .', style: TextStyle(color: Colors.orange.withAlpha(100))),
      ),
    );
  }

  Widget buildLoading() {
    return SliverToBoxAdapter(
        child: new Theme(
            data: Theme.of(context).copyWith(accentColor: Colors.orange),
            child: LinearProgressIndicator()));
  }

  Widget buildListWithData(context, quote) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              child: ListTile(
                title: Text(quote.quotes[index]),
              ),
            ),
          );
        },
        childCount: quote.quotes.length,
      ),
    );
  }

  void triggerUid(BuildContext context, String uid) {
    // ignore: close_sinks
    final quoteBloc = BlocProvider.of<QuoteBloc>(context);
    quoteBloc.add(GetQuotes(uid));
  }
}
