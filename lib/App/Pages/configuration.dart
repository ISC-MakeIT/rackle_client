import 'package:flutter/material.dart';

class ConfigurationViews extends StatelessWidget {
  final List<String> sex = ['男性', '女性', 'その他'];
  final List<String> used = ['利用していない', '車椅子利用', '電動車椅子利用', 'スポーツ用車椅子'];
  final List<String> caregiver = ['なし', 'あり'];
  final List<String> senior = ['オフ', 'オン'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            heading('ユーザー設定', context, 0),
            pulldownList('性別', sex),
            pulldownList('ご利用環境', used),
            pulldownList('介助者', caregiver),
            pulldownList('シニアモード', senior),
            postConfig(context),
            heading('サポート', context, 1),
            supportButtons('アプリのご利用方法', context),
            supportButtons('お問い合わせ', context),
          ],
        ),
      ),
    );
  }
}

heading(String _name, context, num) {
  final List<double> _margin = [44.0, 24.0];

  return Container(
    width: MediaQuery.of(context).size.width * 0.90,
    height: 56.0,
    margin: EdgeInsets.only(
      top: _margin[num],
    ),
    child: Text(
      _name,
      style: TextStyle(
        fontSize: 22.62,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.left,
    ),
  );
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
              fontSize: 16.0,
              color: Color(0xFFB3BAAB),
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
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onTap: () {},
    ),
  );
}

supportButtons(String _name, context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 64.0,
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(width: 0.5, color: Color(0xFFE5E8E0)),
      ),
    ),
    child: InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(top: 19.0, left: 21.0, bottom: 19.0),
        child: Text(
          _name,
          textAlign: TextAlign.left,
        ),
      ),
    ),
  );
}
