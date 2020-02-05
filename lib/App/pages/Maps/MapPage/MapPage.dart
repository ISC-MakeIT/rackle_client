import 'package:flutter/material.dart';
import 'package:rackle_client/App/pages/Maps/Panels/MapPage/stationSummary.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../MapView/MapView.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _panelHeightOpen = MediaQuery.of(context).size.height * .80;

    return SlidingUpPanel(
      padding: EdgeInsets.only(
        left: 22,
        right: 22,
      ),
      panelBuilder: (ScrollController sc) => panel(sc),
      body: MapView(
        initialCameraPosition:
            CameraPosition(target: LatLng(35.4655618, 139.6220429), zoom: 18),
      ),
      maxHeight: _panelHeightOpen,
      backdropEnabled: true,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
    );
  }

  Widget panel(sc) {
    // ここでpanelの表示を変える
    return StationSummary(sc);
  }
}
