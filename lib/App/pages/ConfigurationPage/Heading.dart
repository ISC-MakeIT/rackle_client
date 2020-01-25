import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  Heading({
    Key key,
    this.name,
    this.context,
  });

  final name;
  final context;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 56.0,
      margin: EdgeInsets.only(
        top: 44.0,
      ),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 22.62,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
