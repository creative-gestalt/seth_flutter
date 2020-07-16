import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final Widget destination;

  CustomCard({@required this.text, @required this.destination});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: InkWell(
        splashColor: Colors.black.withAlpha(100),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => destination,
            ),
          );
        },
      ),
    );
  }
}
