import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HubCard extends StatelessWidget {
  final String text;
  final String image;
  final IconData icon;

  const HubCard({
    Key key,
    @required this.text,
    @required this.image,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, color: Theme.of(context).primaryIconTheme.color),
              const SizedBox(height: 20),
              Text(
                text,
                style: Theme.of(context).accentTextTheme.bodyText2,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
