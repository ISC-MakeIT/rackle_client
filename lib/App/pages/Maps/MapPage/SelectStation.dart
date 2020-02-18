import 'package:flutter/material.dart';
import 'package:rackle_client/App/pages/Maps/MapPage/StationMap.dart';
import 'package:rackle_client/App/pages/Maps/MapView/MapView.dart';
import 'package:rackle_client/App/pages/Maps/Panels/MapPage/selectStationPanel.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SelectStation extends StatelessWidget {
  final onPush;
  SelectStation({this.onPush});

  Widget build(BuildContext context) {
    final _panelHeightOpen = MediaQuery.of(context).size.height * .80;
    final _panelHeightClose = MediaQuery.of(context).size.height * .5;
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: _panelHeightClose - 8),
          child: MapView(
            initialCameraPosition: CameraPosition(
              target: LatLng(35.4655618, 139.6220429),
              zoom: 10,
            ),
            zoomPreference: MinMaxZoomPreference(10, 10),
          ),
        ),
        SlidingUpPanel(
          padding: EdgeInsets.only(
            left: 22,
            right: 22,
          ),
          panelBuilder: (ScrollController sc) => panel(sc, context),
          maxHeight: _panelHeightOpen,
          minHeight: _panelHeightClose,
          backdropEnabled: true,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
      ],
    );
  }

  Widget panel(sc, context) {
    void onPush() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return StationMap();
          },
        ),
      );
    }

    return SelectStationPanel(sc: sc, onPush: onPush);
  }
}
