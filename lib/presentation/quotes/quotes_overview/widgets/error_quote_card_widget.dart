import 'package:flutter/material.dart';
import 'package:seth_flutter/domain/quotes/quote.dart';

class ErrorQuoteCard extends StatelessWidget {
  final Quote quote;

  const ErrorQuoteCard({Key key, @required this.quote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: <Widget>[
            Text(
              'Invalid note, please contact support',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2
                  .copyWith(fontSize: 20),
            ),
            const SizedBox(height: 2),
            Text(
              'Details for nerds',
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            Text(
              quote.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
