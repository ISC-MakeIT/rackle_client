import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import '../theme/rackleTheme.dart';
//import './routes/routes.dart';
import './BottomNav/BottomMenuBar.dart';
import './Pages/configuration.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'らっくる',
      theme: rackleTheme,
      home: SplashScreen(
          seconds: 7,
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

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // Container(),
          configurationViews(),
      bottomNavigationBar: BottomMenuBar(),
    );
  }
}
