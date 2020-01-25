import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatelessWidget {
  // Completer<GoogleMapController> _controller = Completer();
  // final List<Marker> markers = [];

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: null,
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
      // onMapCreated: (GoogleMapController controller) {
      //   _controller.complete(controller);
      // },
      indoorViewEnabled: true,
      // markers: Set.from(markers),
    );
  }
}
