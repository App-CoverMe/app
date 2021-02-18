import 'package:app/login/cm_text_field.dart';
import 'package:flutter/material.dart';

class CreateProfileScreen extends StatefulWidget {
  @override
  _CreateProfileScreenState createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final Function(String) genericValidator = (value) {
    if (value.isEmpty) {
      return 'Please enter some text';
    } else {
      return null;
    }
  };

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create a profile',
          style: textTheme.headline5,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: CmTextField(
                      validator: genericValidator,
                      labelText: 'Venue Name',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: CmTextField(
                      validator: genericValidator,
                      labelText: 'Email Address',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: CmTextField(
                      validator: genericValidator,
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  RaisedButton(
                    onPressed: () {
                      // Validate form and then do something
                      if (_formKey.currentState.validate() == true) {
                        print('All good!');
                      }
                    },
                    child: Text('Submit'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
