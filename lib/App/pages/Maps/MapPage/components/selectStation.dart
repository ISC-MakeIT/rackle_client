import 'package:flutter/material.dart';

class SelectStation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 18.3,
            bottom: 19,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "どの駅をご利用ですか？",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff53514B),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 56,
          child: RaisedButton(
            onPressed: () {},
            color: Color(0xff26BD95),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(16.0),
            ),
          ),
        ),
      ],
    );
  }
}
