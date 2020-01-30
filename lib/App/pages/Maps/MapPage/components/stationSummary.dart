import 'package:flutter/material.dart';

class StationSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 13),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "横浜駅",
              style: TextStyle(
                color: Color(0xff53514B),
                fontWeight: FontWeight.bold,
                fontSize: 22.62,
              ),
            ),
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
          child: ListView.builder(
            itemCount: null,
            itemBuilder: (BuildContext context, int index) {
              return null;
            },
          ),
        )

        // // 住所
        // Container(
        //   padding: EdgeInsets.only(bottom: 23),
        //   decoration: BoxDecoration(
        //     border: Border(bottom: BorderSide(color: Colors.grey)),
        //   ),
        //   child: ListTile(
        //     leading: Icon(Icons.pin_drop),
        //     title: Text(
        //       "HogeHogeHoge\nHogeHogeHoge",
        //       style: TextStyle(
        //         color: Color(0xff53514B),
        //         fontSize: 16,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // ),
        //
        // // 電話番号
        // Container(
        //   padding: EdgeInsets.only(
        //     top: 10,
        //     bottom: 10,
        //   ),
        //   decoration: BoxDecoration(
        //     border: Border(bottom: BorderSide(color: Colors.grey)),
        //   ),
        //   child: ListTile(
        //     leading: Icon(Icons.phone),
        //     title: Text(
        //       "123-456-789",
        //       style: TextStyle(
        //         color: Color(0xff53514B),
        //         fontSize: 16,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // ),
        //
        // // URL
        // Container(
        //   padding: EdgeInsets.only(
        //     top: 23,
        //     bottom: 23,
        //   ),
        //   decoration: BoxDecoration(
        //     border: Border(bottom: BorderSide(color: Colors.grey)),
        //   ),
        //   child: ListTile(
        //     leading: Icon(Icons.phone),
        //     title: Text(
        //       "https://example.com",
        //       style: TextStyle(
        //         color: Color(0xff53514B),
        //         fontSize: 16,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // ),
        //
        // // 対応状況
        // Container(
        //   padding: EdgeInsets.only(
        //     top: 23,
        //     bottom: 23,
        //   ),
        //   decoration: BoxDecoration(
        //     border: Border(bottom: BorderSide(color: Colors.grey)),
        //   ),
        //   child: ListTile(
        //     leading: Icon(Icons.phone),
        //     title: Text(
        //       "123-456-789",
        //       style: TextStyle(
        //         color: Color(0xff53514B),
        //         fontSize: 16,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
