import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:seth_flutter/src/screens/login/email_login_screen.dart';
import 'package:seth_flutter/src/screens/login/google_login_screen.dart';
import 'file:///C:/Users/thebb/github/seth_flutter/lib/src/screens/signup/email_signup_screen.dart';
import 'package:seth_flutter/src/utils/google_sign_in.dart';

class SignUpScreen extends StatefulWidget {
  final String title = 'Sign Up';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Keep Seth with you, on any device.',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SignInButton(
                Buttons.Email,
                text: "Sign up with Email",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EmailSignUpScreen()),
                  );
                },
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SignInButton(
                Buttons.Google,
                text: "Log in with Google",
                onPressed: () {
                  try {
                    signInWithGoogle().then((uid) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => GoogleLoginScreen(uid: uid),
                        ),
                      );
                    });
                  } catch (error) {
                    print(error);
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                  child: Text("Log In Using Email",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmailLoginScreen()),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
