import 'package:flutter/material.dart';

class CmTextField extends StatelessWidget {
  final Function(String) validator;
  final String labelText;
  CmTextField({@required this.validator, @required this.labelText});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      
    );
  }
}
