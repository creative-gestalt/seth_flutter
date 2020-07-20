import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:seth_flutter/src/screens/0_home/home_screen.dart';
import 'package:seth_flutter/src/screens/signup/signup_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  Widget nextRoute;

  @override
  void initState() {
    super.initState();
    _getNextRoute();
  }

  _getNextRoute() async {
    final result = await FirebaseAuth.instance.currentUser().then((res) => res);
    if (result != null) {
      nextRoute = HomeScreen(uid: result.uid);
    } else {
      nextRoute = SignUpScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      navigateAfterSeconds: nextRoute,
      loaderColor: Colors.orange,
      backgroundColor: Colors.black,
      seconds: 2,
      title: Text(
        '''Welcome to the Seth App
        .:signing you in:.''',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.orange,
        ),
      ),
    );
  }
}
