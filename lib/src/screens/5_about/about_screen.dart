import 'package:flutter/material.dart';
import 'package:seth_flutter/src/widgets/custom_sliver_app_bar.dart';
import 'package:seth_flutter/src/screens/5_about/body.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(
            height: 200.0,
            customTitle: 'About Seth',
            bgColor: Colors.black,
            leading: true,
          ),
          AboutBody(),
        ],
      ),
    );
  }
}
