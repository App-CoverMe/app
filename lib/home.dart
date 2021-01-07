import 'package:app/authentication/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      key: _rootScaffold,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => _rootScaffold.currentState.openDrawer(),
          child: Icon(Icons.menu),
        ),
        title: Text('CoverMe'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () => BlocProvider.of<AuthenticationBloc>(context)
                  .add(AuthenticationLogoutRequested()),
              child: Icon(Icons.logout),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: _currentTabIndex == 0
          ? Container(color: Colors.pink[200])
          : Container(color: Colors.green[200]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Feed',
          )
        ],
        onTap: (index) => setState(() => _currentTabIndex = index),
      ),
    );
  }
}
