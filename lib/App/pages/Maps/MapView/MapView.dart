import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
export 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatelessWidget {
  final CameraPosition initialCameraPosition;
  final Completer<GoogleMapController> _controller = Completer();
  final zoomPreference;
  final markers;

  MapView({
    Key key,
    @required this.initialCameraPosition,
    this.zoomPreference,
    this.markers,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: initialCameraPosition,
      myLocationEnabled: true,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
      minMaxZoomPreference: zoomPreference,
      indoorViewEnabled: true,
      //markers: Set.from(markers),
      onTap: (pos) {
        print('called');
      },
    );
  }
}
