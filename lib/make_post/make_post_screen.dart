import 'package:app/constants/ui_constants.dart';
import 'package:app/login/cm_text_field.dart';
import 'package:app/make_post/offer_post.dart';
import 'package:app/make_post/update_post.dart';
import 'package:flutter/material.dart';

class MakePostScreen extends StatefulWidget {
  @override
  _MakePostScreenState createState() => _MakePostScreenState();
}

class _MakePostScreenState extends State<MakePostScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Make a Post',
            style: textTheme.headline5,
          ),
          centerTitle: true,
          bottom: TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 32.0),
            physics: BouncingScrollPhysics(),
            indicatorColor: kPrimaryTextColor,
            labelStyle: textTheme.headline6,
            labelColor: kPrimaryTextColor,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.info,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      'Update',
                      style: textTheme.headline6.copyWith(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.whatshot,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      'Alert',
                      style: textTheme.headline6.copyWith(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              UpdatePost(),
              OfferPost(),
            ],
          ),
        ),
      ),
    );
  }
}
