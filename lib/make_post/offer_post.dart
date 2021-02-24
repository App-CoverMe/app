import 'package:app/login/cm_text_field.dart';
import 'package:app/shared/widgets/cm_description.dart';
import 'package:flutter/material.dart';

class OfferPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          child: Column(
            children: [
              CmTextField(validator: (input) {}, labelText: 'Title'),
              CmDescription(validator: (input) {}, labelText: 'Description'),
              SizedBox(
                height: 16.0,
              ),
              RaisedButton.icon(
                label: Text('Post To Feed'),
                icon: Icon(Icons.send),
                onPressed: () {
                  // Submit post
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
