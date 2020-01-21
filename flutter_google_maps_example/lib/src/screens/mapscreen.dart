import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  Completer<GoogleMapController> _controller = Completer();
  final List<Marker> markers = [];

  @override
  void initState() {
    super.initState();
    markers.add(
      Marker(
        markerId: MarkerId("hoge"),
        draggable: false,
        position: LatLng(35.4655618, 139.6220429),
        onTap: () {},
        infoWindow: InfoWindow(
          title: "hoge",
        ),
      ),
    );
  }

  static final CameraPosition _kYokohamaStation = CameraPosition(
    target: LatLng(35.4655618, 139.6220429),
    zoom: 18,
  );

  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kYokohamaStation,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        indoorViewEnabled: true,
        markers: Set.from(markers),
        onTap: (pos) {
          Marker m = Marker(markerId: MarkerId("huga"), position: pos);
          setState(() {
            markers.add(m);
          });
        },
      ),
    );
  }
}
