import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import './selectStation.dart';

class SummaryPanel extends StatelessWidget {
  final body;

  SummaryPanel({@required this.body});

  @override
  Widget build(BuildContext context) {
    final _panelHeightOpen = MediaQuery.of(context).size.height * .80;

    return SlidingUpPanel(
      panel: _panel(),
      body: body,
      maxHeight: _panelHeightOpen,
      backdropEnabled: true,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
    );
  }

  Widget _panel() {
    return Container(
      padding: EdgeInsets.only(
        left: 22,
        right: 22,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 30,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
          SelectStation(),
        ],
      ),
    );
  }
}
