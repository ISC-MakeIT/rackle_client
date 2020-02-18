import 'package:flutter/material.dart';
import 'package:rackle_client/App/BottomMenuBar/BottomMenuBar.dart';
import 'package:rackle_client/App/BottomMenuBar/TabItem.dart';
import 'package:rackle_client/App/BottomMenuBar/TabNavigator.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TabItem _currentTab = TabItem.map;
  Map<TabItem, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabItem.map: GlobalKey<NavigatorState>(),
    TabItem.pinsummary: GlobalKey<NavigatorState>(),
    TabItem.notifications: GlobalKey<NavigatorState>(),
    TabItem.configurarion: GlobalKey<NavigatorState>(),
  };

  void onSelect(TabItem tabItem) {
    if (_currentTab == tabItem) {
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentTab = tabItem;
      });
    }
  }

  /// HomeTab以外にいたときにHomeTabに戻す
  Future<bool> onWillPop() async {
    final isFirstRoute =
        !await _navigatorKeys[_currentTab].currentState.maybePop();
    if (isFirstRoute) {
      if (_currentTab != TabItem.map) {
        onSelect(TabItem.map);
      }
      return false;
    }
    return isFirstRoute;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            _buildTabItem(
              TabItem.map,
              '/map',
            ),
            _buildTabItem(
              TabItem.pinsummary,
              '/pinsummary',
            ),
            _buildTabItem(
              TabItem.notifications,
              '/notifications',
            ),
            _buildTabItem(
              TabItem.configurarion,
              '/configurarion',
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigation(
          currentTab: _currentTab,
          onSelect: onSelect,
        ),
      ),
    );
  }

  Widget _buildTabItem(
    TabItem tabItem,
    String root,
  ) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigationKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
        routerName: root,
      ),
    );
  }
}
