import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:seth_flutter/main.dart';
import 'package:seth_flutter/src/screens/splash/intro_screen.dart';

class CustomSliverAppBar extends StatelessWidget {
  final String customTitle;
  final Color bgColor;
  final bool leading;
  final double height;

  CustomSliverAppBar({
    @required this.customTitle, this.bgColor, this.leading, this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      expandedHeight: height,
      backgroundColor: bgColor,
      automaticallyImplyLeading: leading,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(customTitle),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.exit_to_app,
            color: Colors.white,
          ),
          onPressed: () {
            FirebaseAuth auth = FirebaseAuth.instance;
            auth.signOut().then((res) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SethApp()),
              );
            });
          },
        )
      ],
    );
  }
}
