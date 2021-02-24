import 'package:flutter/material.dart';

class CmDescription extends StatelessWidget {
  final Function(String) validator;
  final String labelText;

  CmDescription({@required this.validator, @required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 140,
      maxLengthEnforced: true,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
      ),
    );
  }
}
