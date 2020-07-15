import 'package:flutter/material.dart';
import 'package:seth_flutter/src/components/directions/body.dart';
import 'package:seth_flutter/src/components/side_drawer.dart';

class DirectionsScreen extends StatefulWidget {
  final String name;
  final String directions;

  DirectionsScreen({
    @required this.name,
    @required this.directions,
  });

  @override
  _DirectionsScreenState createState() => _DirectionsScreenState();
}

class _DirectionsScreenState extends State<DirectionsScreen>{
  get name => widget.name;
  get directions => widget.directions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Directions',
            style: new TextStyle(color: Colors.orange)),
        iconTheme: IconThemeData(color: Colors.orange),
      ),
      body: Body(name: name, directions: directions),
    );
  }
}
