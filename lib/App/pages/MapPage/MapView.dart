import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatefulWidget {
  @override
  State<MapView> createState() => MapViewState();
}

class MapViewState extends State<MapView> {
  // Completer<GoogleMapController> _controller = Completer();
  // final List<Marker> markers = [];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: null,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        // onMapCreated: (GoogleMapController controller) {
        //   _controller.complete(controller);
        // },
        indoorViewEnabled: true,
        // markers: Set.from(markers),
      ),
    );
  }
}
