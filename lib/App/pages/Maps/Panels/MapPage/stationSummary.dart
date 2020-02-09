import 'package:flutter/material.dart';

class StationSummary extends StatelessWidget {
  final sc;
  StationSummary(this.sc);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: sc,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "横浜駅",
                    style: Theme.of(context).appBarTheme.textTheme.title,
                  ),
                ),
                Container(
                  width: 28,
                  height: 28,
                  child: RaisedButton(
                    color: Color(0xffB3BAAB),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 56,
            margin: EdgeInsets.only(
              top: 16,
              bottom: 24,
            ),
            child: OutlineButton(
              onPressed: () {},
              color: Color(0xff26BD95),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(16.0),
              ),
              child: Text(
                "ホーム情報を表示",
                style: TextStyle(
                  // color: Colors.white,
                  color: Color(0xff53514B),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 204,
            margin: EdgeInsets.only(bottom: 32),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .35,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
