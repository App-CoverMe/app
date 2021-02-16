import 'package:flutter/material.dart';

class CreateProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Create a profile',
                  style: textTheme.headline5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
