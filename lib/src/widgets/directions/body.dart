import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final String name;
  final String directions;

  Body({
    @required this.name,
    @required this.directions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.all(15),
            child: Center(
              child: Text(
                name,
                style: new TextStyle(
                  fontSize: 24.0,
                  color: Colors.orange,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 200),
            padding: EdgeInsets.only(
              left: 15.0,
              right: 15.0,
            ),
            child: Text(
              directions,
              style: new TextStyle(
                color: Colors.white.withAlpha(180),
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
