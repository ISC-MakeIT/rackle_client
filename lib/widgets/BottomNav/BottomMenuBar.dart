import 'package:flutter/material.dart';

class BottomMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text('マップ'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pin_drop),
          title: Text('ピン一覧'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          title: Text('お知らせ'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('設定'),
        ),
      ],
    );
  }
}
