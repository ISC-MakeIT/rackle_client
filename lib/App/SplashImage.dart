import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:splashscreen/splashscreen.dart';

import 'BottomMenuBar/BottomMenuBar.dart';

part 'App.dart';

class SplashImage extends StatelessWidget {
  final Widget after;
  final ThemeData theme;

  SplashImage({Key key, this.after, this.theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'らっくる',
      theme: this.theme,
      home: SplashScreen(
          seconds: 2,
          navigateAfterSeconds: this.after,
          image: Image.asset(
            'assets/logo_rackle.png',
          ),
          photoSize: 140.0,
          imageBackground: AssetImage('assets/logo_background.png'),
          loaderColor: Colors.white),
    );
  }
}
