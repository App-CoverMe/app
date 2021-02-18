import 'package:app/login/cm_text_field.dart';
import 'package:flutter/material.dart';

enum PostType { Update, Offer }

class MakePostScreen extends StatefulWidget {
  @override
  _MakePostScreenState createState() => _MakePostScreenState();
}

class _MakePostScreenState extends State<MakePostScreen> {
  var _postType = PostType.Update;
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Make a Post',
          style: textTheme.headline5,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  ChoiceChip(
                    label: Text('Update'),
                    selected: _postType == PostType.Update,
                    onSelected: (_) {
                      setState(() {
                        _postType = PostType.Update;
                      });
                    },
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  ChoiceChip(
                    label: Text('Offer'),
                    selected: _postType == PostType.Offer,
                    onSelected: (_) {
                      setState(() {
                        _postType = PostType.Offer;
                        print(_postType);
                      });
                    },
                  ),
                ],
              ),
              Form(
                child: Column(
                  children: [
                    CmTextField(validator: (input) {}, labelText: 'Title'),
                    CmTextField(
                        validator: (input) {}, labelText: 'Description'),
                    RaisedButton.icon(
                      label: Text('Submit Post'),
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
      ),
    );
  }
}
