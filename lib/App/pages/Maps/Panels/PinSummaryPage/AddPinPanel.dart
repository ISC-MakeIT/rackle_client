import 'package:flutter/material.dart';

class AddPinPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(
            top: 43,
            bottom: 36,
          ),
          child: Text(
            'ピンを追加する場所を選んでください',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
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
            child: Text(
              "ここに追加する",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
