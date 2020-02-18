import 'package:flutter/material.dart';

class FilterTags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tagList = [
      {
        "name": "マイピン",
        "avatar": "",
        "isSelected": true,
      },
      {
        "name": "エレベータ",
        "avatar": "",
        "isSelected": false,
      },
      {
        "name": "勾配",
        "avatar": "",
        "isSelected": false,
      },
      {
        "name": "段差",
        "avatar": "",
        "isSelected": false,
      },
      {
        "name": "トイレ",
        "avatar": "",
        "isSelected": false,
      },
    ];
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tagList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(right: 10),
            child: ChoiceChip(
              label: Text(tagList[index]["name"]),
              // avatar: tagList,
              padding: EdgeInsets.all(10),
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              elevation: 2,
              selected: tagList[index]["isSelected"],
              selectedColor: Color(0xffCAF8E2),
            ),
          );
        },
      ),
    );
  }
}
