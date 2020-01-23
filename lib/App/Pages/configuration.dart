import 'package:flutter/material.dart';

class ConfigurationViews extends StatelessWidget {
  final List<String> sex = ['男性', '女性', 'その他'];
  // List<String> old = ['']
  final List<String> used = ['利用していない', '車椅子利用', '電動車椅子利用', 'スポーツ用車椅子'];
  final List<String> caregiver = ['なし', 'あり'];
  final List<String> senior = ['オフ', 'オン'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          pulldownList('性別', sex),
          // pulldownList('生年月日', old),
          pulldownList('ご利用環境', used),
          pulldownList('介助者', caregiver),
          pulldownList('シニアモード', senior),
          postConfig(context),
          supportButtons('アプリのご利用方法'),
          supportButtons('お問い合わせ'),
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

postConfig(context) {
  return Container(
    decoration: BoxDecoration(),
    margin: EdgeInsets.only(
      top: 24.0,
    ),
    child: InkWell(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF26BD95),
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 56.0,
        width: MediaQuery.of(context).size.width * 0.90,
        child: Center(
          child: Text(
            '設定を変更',
            style: TextStyle(
              color: Color(0xFF26BD95),
            ),
          ),
        ),
      ),
      onTap: () {},
    ),
  );
}

supportButtons(String _name) {
  return Container(
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(width: 0.5, color: Color(0xFFE5E8E0)),
      ),
    ),
    child: FlatButton(
      child: Text(_name),
      onPressed: () {},
    ),
  );
}
