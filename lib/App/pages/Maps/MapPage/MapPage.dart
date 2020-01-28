import 'package:flutter/material.dart';

import '../MapView/MapView.dart';
import './components/summaryPanel.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SummaryPanel(
      body: MapView(
        initialCameraPosition:
            CameraPosition(target: LatLng(35.4655618, 139.6220429), zoom: 18),
      ),
    );
  }
}
