import 'package:flutter/material.dart';
import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';

class CupertinoRadio extends StatefulWidget {
  @override
  _CupertinoRadioState createState() => _CupertinoRadioState();
}

class _CupertinoRadioState extends State<CupertinoRadio> {
  static final Map<String, String> genderMap = {
    '\$5': '\$5',
    '\$10': '\$10',
    'other': 'Other',
  };
  String _selectedGender = genderMap.keys.first;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Cover Price',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 15.0,
              )),
          Padding(
            padding: EdgeInsets.only(bottom: 5.0),
          ),
          CupertinoRadioChoice(
              choices: genderMap,
              onChange: onGenderSelected,
              initialKeyValue: _selectedGender)
        ],
      ),
    );
  }

  void onGenderSelected(String genderKey) {
    setState(() {
      _selectedGender = genderKey;
    });
  }
}
