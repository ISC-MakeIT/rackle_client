import 'package:flutter/material.dart';
import 'package:rackle_client/App/pages/NotificationsPage/Newslist.dart';
import 'package:rackle_client/App/pages/NotificationsPage/NotificationsHeading.dart';
import 'package:rackle_client/App/pages/pages.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            NotificationsHeading(),
            Newslist(),
          ],
        ),
      ),
    );
  }
}
