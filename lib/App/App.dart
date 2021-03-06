// part of 'SplashImage.dart';
import 'package:flutter/material.dart';
import 'package:rackle_client/App/Home.dart';
import 'package:rackle_client/theme/rackleTheme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'rackle',
      theme: rackleTheme,
      home: Home(),
    );
  }
}
