import 'package:app/login/cm_text_field.dart';
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
              CmTextField(validator: (input) {}, labelText: 'Description'),
              CmTextField(validator: (input) {}, labelText: 'Expiry'),
              SizedBox(
                height: 16.0,
              ),
              RaisedButton.icon(
                label: Text('Post Offer'),
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
