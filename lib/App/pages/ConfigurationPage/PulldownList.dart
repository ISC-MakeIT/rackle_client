import 'package:flutter/material.dart';

class PulldownList extends StatefulWidget {
  PulldownList({
    Key key,
    this.name,
    this.list,
  });

  final name;
  final List<String> list;

  @override
  PulldownListState createState() => PulldownListState();
}

class PulldownListState extends State<PulldownList> {
  //選択したpulldownの値を格納する変数
  String dropdownValue;

  //選択したpulldownの値をdropdownValueのstateの格納する関数
  setDropdownValue(item) {
    setState(() {
      dropdownValue = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xFFE5E8E0),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 19.0,
              left: 21.0,
              bottom: 19.0,
            ),
            child: Text(
              widget.name,
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFFB3BAAB),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 19.0,
              right: 21.0,
              bottom: 19.0,
            ),
            child: DropdownButton<String>(
              value: dropdownValue,
              iconSize: 0.0,
              isDense: true, //これがないとvalueが映せません
              hint: Text('選択してください'),
              items: widget.list.map(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
              onChanged: (String newValue) => setDropdownValue(newValue),
            ),
          ),
        ],
      ),
    );
  }
}
