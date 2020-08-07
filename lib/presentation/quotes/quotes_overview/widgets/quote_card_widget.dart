import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/quotes/quote_actor/quote_actor_bloc.dart';
import 'package:seth_flutter/domain/quotes/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;

  const QuoteCard({Key key, @required this.quote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          // TODO: implement navigation
        },
        onLongPress: () {
          final quoteActorBloc = context.bloc<QuoteActorBloc>();
          _showDeletionDialog(context, quoteActorBloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                quote.body.getOrCrash(),
                style: Theme.of(context).primaryTextTheme.bodyText2,
              ),
              const SizedBox(height: 14,),
              Text('- ${quote.book.getOrCrash()}', style: Theme.of(context).primaryTextTheme.headline5),
            ],
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(BuildContext context, QuoteActorBloc quoteActorBloc) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Selected note:'),
          content: Text(
            quote.body.getOrCrash(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('DELETE'),
            ),
          ],
        );
      },
    );
  }
}
