import 'package:flutter/material.dart';

import 'package:rackle_client/theme/rackleTheme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'らっくる',
      theme: rackleTheme,
      home: Scaffold(
        appBar: AppBar(),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
          )],
        ),
      ),
    );
  }
}
