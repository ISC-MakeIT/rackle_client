import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import './pinSummary.dart';

class SummaryPanel extends StatelessWidget {
  final body;

  SummaryPanel({@required this.body});

  @override
  Widget build(BuildContext context) {
    final _panelHeightOpen = MediaQuery.of(context).size.height * .80;

    return SlidingUpPanel(
      padding: EdgeInsets.only(
        left: 22,
        right: 22,
      ),
      panelBuilder: (ScrollController sc) => PinSummary(sc),
      body: body,
      maxHeight: _panelHeightOpen,
      backdropEnabled: true,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
    );
  }
}
