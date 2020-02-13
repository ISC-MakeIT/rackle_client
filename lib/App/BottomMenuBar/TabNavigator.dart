import 'package:flutter/material.dart';
import 'package:rackle_client/App/BottomMenuBar/TabItem.dart';
import 'package:rackle_client/App/pages/Maps/MapPage/SelectStation.dart';
import 'package:rackle_client/App/pages/Maps/MapPage/StationMap.dart';
import 'package:rackle_client/App/pages/Maps/PinsSummaryPage/PinsSummaryPage.dart';
import 'package:rackle_client/App/pages/pages.dart';

class TabNavigator extends StatelessWidget {
  const TabNavigator({
    Key key,
    @required this.tabItem,
    @required this.routerName,
    @required this.navigationKey,
  }) : super(key: key);

  final TabItem tabItem;
  final String routerName;
  final GlobalKey<NavigatorState> navigationKey;

  Map<String, Widget Function(BuildContext)> _routerBuilder(
          BuildContext context) =>
      {
        '/map': (context) => StationMap(),
        '/pinsummary': (context) => PinsSummaryPage(),
        '/notifications': (context) => NotificationsPage(),
        '/configurarion': (context) => ConfigurationPage(),
      };

  @override
  Widget build(BuildContext context) {
    final routerBuilder = _routerBuilder(context);

    return Navigator(
      key: navigationKey,
      initialRoute: '/',
      onGenerateRoute: (settings) {
        return MaterialPageRoute<Widget>(
          builder: (context) {
            return routerBuilder[routerName](context);
          },
        );
      },
    );
  }
}

