import 'package:flutter/material.dart';

class NotificationsHeading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 56.0,
      margin: EdgeInsets.only(
        top: 44.0,
      ),
      child: Text(
        "お知らせ",
        style: TextStyle(
          fontSize: 25.13,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
