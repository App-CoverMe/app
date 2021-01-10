import 'package:app/authentication/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'explore/explore_screen.dart';
import 'feed/feed_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTabIndex = 0;
  GlobalKey<ScaffoldState> _rootScaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, //Needed to have the app bar be transparent
      key: _rootScaffold,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => _rootScaffold.currentState.openDrawer(),
          child: Icon(Icons.menu),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.place),
            Text(
              '657-Mars, Milkyway',
              style: Theme.of(context).textTheme.headline6,
            ), //Replace with users' current location
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: _currentTabIndex == 0 ? ExploreScreen() : FeedScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            activeIcon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            activeIcon: Icon(Icons.list_alt),
            label: 'Feed',
          )
        ],
        onTap: (index) => setState(() => _currentTabIndex = index),
      ),
    );
  }
}
