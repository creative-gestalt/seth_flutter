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
  String user;
  Widget nextRouteDestination;

  @override
  void initState() {
    super.initState();
    _getCurrentUser();
  }

  void _getCurrentUser() async {
    String fbUser = await FirebaseAuth.instance
        .currentUser()
        .then((res) => res != null ? res.uid : null);
    print('after get user method $fbUser');
    setState(() {
      user = fbUser;
    });
    print('after setState $user');
    _nextRoute();
  }

  void _nextRoute() {
    setState(() {
      if (user != null) {
        nextRouteDestination = HomeScreen(uid: user);
      } else {
        nextRouteDestination = SignUpScreen();
      }
    });
    print(nextRouteDestination);
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      navigateAfterSeconds: nextRouteDestination,
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
