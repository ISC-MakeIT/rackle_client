import 'package:flutter/material.dart';

class NewArrivalMark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 18,
      margin: EdgeInsets.only(
        left: 11,
      ),
      decoration: BoxDecoration(
        color: Color(0XFFFC7373),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        '新着',
        style: TextStyle(
          fontSize: 11.32,
          color: Color(0XFFFFFFFF),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
