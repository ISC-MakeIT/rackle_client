import 'package:flutter/material.dart';
import 'package:rackle_client/App/pages/NotificationsPage/Newslist.dart';
import 'package:rackle_client/App/pages/NotificationsPage/NotificationsHeading.dart';

class NotificationsPage extends StatefulWidget {
  @override
  NotificationsPageState createState() => NotificationsPageState();
}

class NotificationsPageState extends State<NotificationsPage> {
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
