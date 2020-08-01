import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:seth_flutter/presentation/home/widgets/hub_card_widget.dart';
import 'package:seth_flutter/presentation/routes/router.gr.dart';

class HomeHubBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      children: <Widget>[
        InkWell(
          onTap: () {
            null;
          },
          child: HubCard(
            text: 'Search',
            image: 'lib/infrastructure/core/assets/geometric-01.png',
            icon: Icons.search,
          ),
        ),
        InkWell(
          onTap: () {
            ExtendedNavigator.of(context).pushExercisesOverviewPage();
          },
          child: HubCard(
            text: 'Exercises',
            image: 'lib/infrastructure/core/assets/geometric-02.png',
            icon: Icons.directions_run,
          ),
        ),
        InkWell(
          onTap: () {
            ExtendedNavigator.of(context).pushPracticesOverviewPage();
          },
          child: HubCard(
            text: 'Practices',
            image: 'lib/infrastructure/core/assets/geometric-06.png',
            icon: Icons.update,
          ),
        ),
        InkWell(
          onTap: () {
            ExtendedNavigator.of(context).pushQuotesOverviewPage();
          },
          child: HubCard(
            text: 'Saved Quotes',
            image: 'lib/infrastructure/core/assets/geometric-03.png',
            icon: Icons.save,
          ),
        ),
        InkWell(
          onTap: () {
            null;
          },
          child: HubCard(
            text: 'About',
            image: 'lib/infrastructure/core/assets/geometric-04.png',
            icon: Icons.format_quote,
          ),
        ),
        InkWell(
          onTap: () {
            null;
          },
          child: HubCard(
            text: 'Settings',
            image: 'lib/infrastructure/core/assets/geometric-05.png',
            icon: Icons.settings,
          ),
        ),
      ],
    );
  }
}
