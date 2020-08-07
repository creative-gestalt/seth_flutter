import 'package:flutter/material.dart';

class DirectionPage extends StatelessWidget {
  final String direction;

  const DirectionPage({Key key, this.direction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Directions'),
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
