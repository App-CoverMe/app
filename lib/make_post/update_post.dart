import 'package:app/login/cm_text_field.dart';
import 'package:flutter/material.dart';

class UpdatePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  CmTextField(validator: (input) {}, labelText: 'Title'),
                  CmTextField(validator: (input) {}, labelText: 'Description'),
                  SizedBox(
                    height: 16.0,
                  ),
                  RaisedButton.icon(
                    label: Text('Post Update'),
                    icon: Icon(Icons.send),
                    onPressed: () {
                      // Submit post
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
