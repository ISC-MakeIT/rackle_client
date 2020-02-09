import 'package:flutter/material.dart';
import 'package:rackle_client/App/pages/Maps/Panels/MapPage/pinSummary.dart';
import 'package:rackle_client/App/pages/Maps/Panels/MapPage/stationSummary.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import './components/filterTags.dart';

import '../MapView/MapView.dart';

class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  final List<Marker> markers = [];
  @override
  void initState() {
    super.initState();
    // server側と通信
    // modelに突っ込む
    // markerを更新
  }

  Widget build(BuildContext context) {
    final _panelHeightOpen = MediaQuery.of(context).size.height * .80;

    return Stack(
      // alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .1),
          child: MapView(
            initialCameraPosition: CameraPosition(
                target: LatLng(35.4655618, 139.6220429), zoom: 18),
            markers: markers,
          ),
        ),
        Positioned(
          top: 45,
          left: 12,
          child: FloatingActionButton(
            // herotag is necessary to use some FloatingActionButton.
            heroTag: "back",
            onPressed: () {},
          ),
        ),
        Positioned(
          top: 115,
          left: 12,
          child: FloatingActionButton(
            heroTag: "train",
            onPressed: () {},
          ),
        ),
        Positioned(
          right: 0,
          bottom: MediaQuery.of(context).size.height * .1,
          left: 0,
          child: SizedBox(
            height: 100,
            child: FilterTags(),
          ),
        ),
        SlidingUpPanel(
          padding: EdgeInsets.only(
            left: 22,
            right: 22,
          ),
          panelBuilder: (ScrollController sc) => panel(sc),
          maxHeight: _panelHeightOpen,
          backdropEnabled: true,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
      ],
    );
  }

  Widget panel(sc) {
    // ここでpanelの表示を変える
    return PinSummary(sc);
  }
}
