import 'package:flutter/material.dart';

class BottomMenuBar extends StatefulWidget {
  final int menuIndex;
  final Function navigationHandler;

  BottomMenuBar({Key key, this.menuIndex, this.navigationHandler}) : super(key: key);

  @override
  BottomMenuBarState createState() => BottomMenuBarState();
}

class BottomMenuBarState extends State<BottomMenuBar> {
  TextStyle _textTheme() => Theme.of(context).textTheme.button;
  Color _iconColor() => Theme.of(context).iconTheme.color;
  Color _activeIconColor() => Theme.of(context).accentIconTheme.color;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
              color: Color(0xFFB3BAAB),
            ),
            activeIcon: Icon(
              Icons.map,
              color: _activeIconColor(),
            ),
            title: Text(
              'マップ',
              style: _textTheme(),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pin_drop,
              color: _iconColor(),
            ),
            activeIcon: Icon(
              Icons.pin_drop,
              color: _activeIconColor(),
            ),
            title: Text(
              'ピン一覧',
              style: _textTheme(),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: _iconColor(),
            ),
            activeIcon: Icon(
              Icons.notifications,
              color: _activeIconColor(),
            ),
            title: Text(
              'お知らせ',
              style: _textTheme(),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: _iconColor(),
            ),
            activeIcon: Icon(
              Icons.settings,
              color: _activeIconColor(),
            ),
            title: Text(
              '設定',
              style: _textTheme(),
            ),
          ),
        ],
        currentIndex: widget.menuIndex,
        onTap: (index) {
          widget.navigationHandler(index);
        });
  }
}
