import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './Heading.dart';
import './PulldownList.dart';
import './PostConfig.dart';
import './SupportButtons.dart';
import './Birthday.dart';

class ConfigurationViews extends StatefulWidget {
  @override
  ConfigurationViewsState createState() => ConfigurationViewsState();
}

class ConfigurationViewsState extends State<ConfigurationViews> {
  final List<String> name = [
    'ユーザー設定',
    '性別',
    '生年月日',
    'ご利用環境',
    '介護者',
    'シニアモード',
    'サポート',
    'アプリのご利用方法',
    'お問い合わせ',
  ];
  final List<String> sex = [
    '男性',
    '女性',
    'その他',
  ];
  final List<String> used = [
    '利用していない',
    '車椅子利用',
    '電動車椅子利用',
    'スポーツ用車椅子',
  ];
  final List<String> caregiver = [
    'なし',
    'あり',
  ];
  final List<String> senior = [
    'オフ',
    'オン',
  ];

  final List<double> margin = [
    44.0,
    24.0,
  ];

  var userBirthday;

  final formatter = DateFormat('yyyy/MM/dd');

  setBirthday(item) {
    setState(() {
      userBirthday = item;
    });
    print('$userBirthday');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Heading(
              name: name[0],
              context: context,
              margin: margin,
            ),
            PulldownList(
              name: name[1],
              list: sex,
            ),
            Birthday(
              name: name[2],
              formatter: formatter,
              setBirthday: setBirthday,
              userBirthday: userBirthday,
            ),
            PulldownList(
              name: name[3],
              list: used,
            ),
            PulldownList(
              name: name[4],
              list: caregiver,
            ),
            PulldownList(
              name: name[5],
              list: senior,
            ),
            PostConfig(
              context: context,
            ),
            Heading(
              name: name[6],
              context: context,
              margin: margin,
            ),
            SupportButtons(
              name: name[7],
              context: context,
            ),
            SupportButtons(
              name: name[8],
              context: context,
            ),
          ],
        ),
      ),
    );
  }
}
