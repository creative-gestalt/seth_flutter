import 'package:flutter/material.dart';
import 'package:seth_flutter/src/screens/4_saved/body.dart';
import 'package:seth_flutter/src/widgets/custom_scroll_app_bar.dart';
import 'package:seth_flutter/src/components/side_drawer.dart';
import 'package:seth_flutter/src/utils/db_provider.dart';

class SavedScreen extends StatefulWidget {
  @override
  _SavedScreenState createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  Future quoteFuture;

  @override
  void initState() {
    super.initState();
    quoteFuture = _getQuote();
  }

  _getQuote() async {
    return await DBProvider.db.getQuotes();
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
          CustomScrollAppBar(customTitle: 'Saved Quotes'),
          CustomScrollBody(quotes: quoteFuture),
        ],
      ),
      drawer: SideDrawer(),
    );
  }
}
