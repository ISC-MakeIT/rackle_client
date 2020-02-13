import 'package:flutter/material.dart';
import 'package:rackle_client/App/pages/Maps/Panels/MapPage/pinSummary.dart';
import 'package:rackle_client/App/pages/Maps/Panels/MapPage/stationSummary.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import './components/filterTags.dart';

import '../MapView/MapView.dart';

class StationMap extends StatefulWidget {
  @override
  State<StationMap> createState() => StationMapState();
}

class StationMapState extends State<StationMap> {
  final List<Marker> markers = [];
  var hoge = true;
  @override
  void initState() {
    super.initState();
    // server側と通信
    // modelに突っ込む
    // markerを更新
  }

  Widget build(BuildContext context) {
    final _panelHeightOpen = MediaQuery.of(context).size.height * .80;
    final _panelHeightClose = MediaQuery.of(context).size.height * .14;

    return Stack(
      children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .1),
          child: MapView(
            initialCameraPosition: CameraPosition(
              target: LatLng(35.4655618, 139.6220429),
              zoom: 18,
            ),
            zoomPreference: MinMaxZoomPreference(18, 18),
            markers: markers,
          ),
        ),
        Positioned(
          top: 45,
          left: 12,
          child: FloatingActionButton(
            // herotag is necessary to use some FloatingActionButton.
            heroTag: "back",
            onPressed: () {
              setState(() {
                hoge = false;
              });
            },
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
          bottom: _panelHeightClose - 20,
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

  Widget panel(sc) {
    // ここでpanelの表示を変える
    if (hoge) {
      return PinSummary(sc);
    } else {
      return StationSummary(sc);
    }
  }
}
