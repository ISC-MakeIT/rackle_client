import 'package:flutter/material.dart';

class SelectStationPanel extends StatelessWidget {
  final sc;
  final onPush;
  SelectStationPanel({Key key, this.sc, this.onPush}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: sc,
      child: Column(
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
                  color: Color(0xff53514B),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 56,
            child: RaisedButton(
              onPressed: () => onPush(),
              color: Color(0xff26BD95),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(16.0),
              ),
              child: Text(
                "横浜駅を利用する",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 36,
              bottom: 6,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "対応済み駅マップ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff53514B),
                ),
              ),
            ),
          ),
          //TODO:need refactoring
          SingleChildScrollView(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.business),
                  onTap: () => onPush(),
                  title: Text(
                    "横浜駅",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Text("対応状況"),
                      // アイコン配置
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
