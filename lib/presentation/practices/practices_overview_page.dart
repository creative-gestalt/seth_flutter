import 'package:flutter/material.dart';
import 'package:seth_flutter/presentation/practices/widgets/practices_overview_body.dart';

class PracticesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice Elements'),
      ),
      body: PracticesOverviewBody(),
    );
  }
}
