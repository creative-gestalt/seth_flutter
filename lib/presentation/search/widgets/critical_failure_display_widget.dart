import 'package:flutter/material.dart';
import 'package:seth_flutter/domain/search/search_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final SearchFailure failure;

  const CriticalFailureDisplay({Key key, this.failure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          '😱',
          style: TextStyle(fontSize: 100),
        ),
        Text(
          failure.maybeMap(
            orElse: () => 'Unexpected error.\n Please contact support',
          ),
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              Icon(Icons.mail),
              SizedBox(width: 4),
              Text('I NEED HELP')
            ],
          ),
        )
      ],
    );
  }
}
