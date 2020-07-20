import 'package:flutter/material.dart';
import 'package:seth_flutter/src/screens/0_home/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class GoogleLoginScreen extends StatefulWidget {
  final String uid;

  const GoogleLoginScreen({Key key, this.uid}) : super(key: key);

  @override
  _GoogleLoginScreenState createState() => _GoogleLoginScreenState();
}

class _GoogleLoginScreenState extends State<GoogleLoginScreen> {
  get userId => widget.uid;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(userId);
    return SplashScreen(
      navigateAfterSeconds: HomeScreen(uid: userId),
      loaderColor: Colors.orange,
      backgroundColor: Colors.black,
      seconds: 2,
      title: Text(
        '''.:creating your reality:.''',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.orange,
        ),
      ),
    );
  }
}
