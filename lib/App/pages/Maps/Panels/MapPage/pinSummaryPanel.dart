import 'package:flutter/material.dart';

class PinSummaryPanel extends StatelessWidget {
  final sc;

  PinSummaryPanel({Key key, this.sc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tagList = [
      {"name": "B3F", "active": false},
      {"name": "B2F", "active": false},
      {"name": "B1F", "active": true},
      {"name": "1F", "active": true},
      {"name": "2F", "active": false},
      {"name": "3F", "active": false},
    ];
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
                  // width: 28,
                  // height: 28,
                  child: OutlineButton(
                    onPressed: () {},
                    borderSide: BorderSide(
                      color: Color(0xff26BD95),
                    ),
                    child: Text(
                      "閉じる",
                      style: TextStyle(
                        color: Color(0xff26BD95),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 35,
            margin: EdgeInsets.only(top: 16, bottom: 16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tagList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(right: 7),
                  child: ChoiceChip(
                    label: Text(
                      tagList[index]["name"],
                      style: TextStyle(),
                    ),
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    // elevation: 2,
                    selected: tagList[index]["active"],
                    selectedColor: Color(0xff26BD95),
                  ),
                );
              },
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
          ),
        ],
      ),
    );
  }
}
