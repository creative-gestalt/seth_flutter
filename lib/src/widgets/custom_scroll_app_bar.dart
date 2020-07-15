import 'package:flutter/material.dart';

class CustomScrollAppBar extends StatelessWidget {
  final String customTitle;

  CustomScrollAppBar({@required this.customTitle});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      pinned: true,
      expandedHeight: 150.0,
      iconTheme: new IconThemeData(color: Colors.orange),
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          customTitle,
          style: new TextStyle(
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
