import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SummaryPanel extends StatelessWidget {
  final body;

  SummaryPanel({this.body});

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      panel: _panel(),
      body: body,
      backdropEnabled: true,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
    );
  }

  Widget _panel() {
    return Column(
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
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
            ),
          ],
        ),
        SizedBox(
          height: 18.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Explore Pittsburgh",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
