import 'package:flutter/material.dart';

//import '../theme/rackleTheme.dart';
import './BottomNav/BottomMenuBar.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'らっくる',
      theme: ThemeData(
        textTheme: TextTheme(
          button: TextStyle(
            color: Color(0xFF53514B),
          ),
        ),
        iconTheme: IconThemeData(
          color: Color(0xFFB3BAAB),          
        ),
        accentIconTheme: IconThemeData(
          color: Color(0xFF53514B),
        ),
      ),
      home: Scaffold(
        body: Container(),
        bottomNavigationBar: BottomMenuBar(),
      ),
    );
  }
}
