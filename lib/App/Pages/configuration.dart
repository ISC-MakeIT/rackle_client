import 'package:flutter/material.dart';

class configurationViews extends StatelessWidget {
  List<String> sex = ['男性', '女性', 'その他'];
  List<String> used = ['利用していない', '車椅子利用', '電動車椅子利用', 'スポーツ用車椅子'];
  List<String> caregiver = ['なし', 'あり'];
  List<String> senior = ['オフ', 'オン'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          pulldownList('性別', sex),
          pulldownList('ご利用環境', used),
          pulldownList('介助者', caregiver),
          pulldownList('シニアモード', senior),
        ],
      ),
    );
  }
}

pulldownList(String _name, List<String> _list) {
  return Container(
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(width: 0.5, color: Color(0xFFE5E8E0)),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 19.0, left: 21.0, bottom: 19.0),
          child: Text(
            _name,
            style: TextStyle(
              fontSize: 32.0,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 19.0, right: 21.0, bottom: 19.0),
          child: DropdownButton<String>(
            items: _list.map(
              (String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
            onChanged: (_) {},
          ),
        ),
      ],
    ),
  );
}
