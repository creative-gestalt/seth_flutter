import 'package:flutter/material.dart';

class DirectionPage extends StatelessWidget {
  final String name;
  final String direction;

  const DirectionPage({Key key, @required this.name, @required this.direction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            direction,
            style: Theme.of(context).primaryTextTheme.bodyText2,
          ),
        ),
      ),
    );
  }
}
