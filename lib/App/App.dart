import 'package:flutter/material.dart';

import '../theme/rackleTheme.dart';
//import './routes/routes.dart';
import './BottomNav/BottomMenuBar.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'らっくる',
      theme: rackleTheme, 
			//routes: routes,
      home: Scaffold(
        body: Container(),
        bottomNavigationBar: BottomMenuBar(),
      ),
    );
  }
}
