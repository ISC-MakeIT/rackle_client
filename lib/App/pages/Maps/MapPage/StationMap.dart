import 'package:flutter/material.dart';
import 'package:rackle_client/App/pages/Maps/MapView/MapView.dart';
import 'package:rackle_client/App/pages/Maps/Panels/MapPage/stationSummaryPanel.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import './components/filterTags.dart';

class StationMap extends StatefulWidget {
  final lat;
  final lng;
  StationMap({Key key, this.lat, this.lng}) : super(key: key);
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
            backgroundColor: Colors.white,
            child: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).iconTheme.color,
            ),
            heroTag: "back",
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        Positioned(
          top: 115,
          left: 12,
          child: FloatingActionButton(
            backgroundColor: Color(0xFF26BD95),
            heroTag: "train",
            onPressed: () {},
            child: Icon(
              Icons.train,
              color: Colors.white,
            ),
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
    return StationSummaryPanel(sc: sc);
  }
}
