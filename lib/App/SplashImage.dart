import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import './App.dart';

class SplashImage extends StatelessWidget {
  final Widget after;
  final ThemeData theme;

  SplashImage({Key key, this.after, this.theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'らっくる',
      theme: theme,
      home: SplashScreen(
          seconds: 2,
          navigateAfterSeconds: App(),
          image: Image.asset(
            'assets/logo_rackle.png',
          ),
          photoSize: 140.0,
          imageBackground: AssetImage('assets/logo_background.png'),
          loaderColor: Colors.white),
    );
  }
}
