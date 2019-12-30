import 'package:flutter/material.dart';

//import '../theme/rackleTheme.dart';
import './BottomNav/BottomMenuBar.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'らっくる',
      home: Scaffold(
        body: Container(),
        bottomNavigationBar: BottomMenuBar(),
      ),
    );
  }
}
