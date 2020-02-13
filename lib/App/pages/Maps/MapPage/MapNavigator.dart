import 'package:flutter/material.dart';
import './SelectStation.dart';
import './StationMap.dart';

class TabNavigatorRoutes {
  static const String selectStation = '/';
  static const String stationMap = '/mapPage';
}

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  TabNavigator({this.navigatorKey});

  void _push(BuildContext context, {int lat: 0, int lng: 0}) {
    var routeBuilders = _routeBuilders(context, lat: lat, lng: lng);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            routeBuilders[TabNavigatorRoutes.stationMap](context),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
      {lat: 0, lng: 0}) {
    return {
      TabNavigatorRoutes.selectStation: (context) => SelectStation(
            onPush: (lat, lng) => _push(context, lat: lat, lng: lng),
          ),
      TabNavigatorRoutes.stationMap: (context) => StationMap(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.selectStation,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name](context),
        );
      },
    );
  }
}
