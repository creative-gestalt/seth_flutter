import 'package:flutter/material.dart';
import 'package:seth_flutter/src/widgets/text_form_box.dart';

class NewSavedScreen extends StatefulWidget {
  @override
  _NewSavedScreenState createState() => _NewSavedScreenState();
}

class _NewSavedScreenState extends State<NewSavedScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController quoteController = TextEditingController();
  TextEditingController bookController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Quote'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextFormBox(
                controller: quoteController,
                text: 'Enter Quote',
                padding: 20.0,
                color: Colors.orange,
                borderWidth: 1.0,
                borderRadius: 10.0,
              ),
              TextFormBox(
                controller: bookController,
                text: 'Enter Book',
                padding: 20.0,
                color: Colors.orange,
                borderWidth: 1.0,
                borderRadius: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
