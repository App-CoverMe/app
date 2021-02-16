import 'package:flutter/material.dart';

class CmDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Own a venue?',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Create a profile for your venues and notify locals of opening times, offers and more.',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/createProfile');
              },
              child: Text('Create a profile'),
            ),
            SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'Sign in',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
