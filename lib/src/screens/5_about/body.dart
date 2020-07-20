import 'package:flutter/material.dart';
import 'package:seth_flutter/src/screens/5_about/about_text.dart';

class AboutBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ListTile(
          contentPadding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 300.0),
          title: Text(
            ABOUT_TEXT,
            style: TextStyle(
              height: 1.5,
            ),
          )),
    );
  }
}
