import 'package:app/login/cm_text_field.dart';
import 'package:app/shared/widgets/cm_description.dart';
import 'package:app/shared/widgets/cupertino_radio_buttons.dart';
import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login/cm_text_field.dart';
import '../login/cm_text_field.dart';

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
                  SizedBox(height: 16),
                  CupertinoRadio(),
                  CmTextField(validator: (input) {}, labelText: 'Cover Price'),
                  CmTextField(validator: (input) {}, labelText: 'Hours'),
                  CmTextField(validator: (input) {}, labelText: 'Title'),
                  CmDescription(validator: (input) {}, labelText: 'Menu'),
                  SizedBox(
                    height: 16.0,
                  ),
                  RaisedButton.icon(
                    label: Text('Update Info'),
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
