import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:seth_flutter/src/screens/0_home/home_screen.dart';
import 'package:seth_flutter/src/widgets/text_form_box.dart';

class EmailSignUpScreen extends StatefulWidget {
  @override
  _EmailSignUpScreenState createState() => _EmailSignUpScreenState();
}

class _EmailSignUpScreenState extends State<EmailSignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  DatabaseReference dbRef =
      FirebaseDatabase.instance.reference().child('users');
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void registerToFirebase() {
    firebaseAuth
        .createUserWithEmailAndPassword(
            email: (emailController.text), password: (passwordController.text))
        .then((result) {
      dbRef.child(result.user.uid).set({
        'email': emailController.text,
        'username': nameController.text,
      }).then((res) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen(uid: result.user.uid)),
        );
      });
    }).catchError((err) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text(err.message),
              actions: <Widget>[
                FlatButton(
                  child: Text('Ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    });
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email Registration'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            TextFormBox(
              controller: nameController,
              text: 'Enter Username',
              padding: 20.0,
              color: Colors.orange,
              borderWidth: 1.0,
              borderRadius: 10.0,
            ),
            TextFormBox(
              controller: emailController,
              text: 'Enter Email',
              padding: 20.0,
              color: Colors.orange,
              borderWidth: 1.0,
              borderRadius: 10.0,
            ),
            TextFormBox(
              controller: passwordController,
              obscure: true,
              text: 'Enter Password',
              padding: 20.0,
              color: Colors.orange,
              borderWidth: 1.0,
              borderRadius: 10.0,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    registerToFirebase();
                  }
                },
                child: Text('Submit'),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
