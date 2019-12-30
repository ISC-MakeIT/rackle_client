import 'package:flutter/material.dart';

class BottomMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map,
            color: Color(0xFFB3BAAB),
          ),
          title: Text('マップ'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pin_drop,
            color: Color(0xFFB3BAAB),
          ),
          title: Text('ピン一覧'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications,
            color: Color(0xFFB3BAAB),
          ),
          title: Text('お知らせ'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings,
            color: Color(0xFFB3BAAB),
          ),
          title: Text('設定'),
        ),
      ],
      currentIndex: 1,
      fixedColor: Colors.white,
    );
  }
}
