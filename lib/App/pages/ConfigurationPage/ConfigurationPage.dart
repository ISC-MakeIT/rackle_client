import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './Heading.dart';
import './PulldownList.dart';
import './BirthdaySelect.dart';
import './ConfigPostButton.dart';
import './SupportButtons.dart';

class ConfigurationPage extends StatefulWidget {
  @override
  ConfigurationPageState createState() => ConfigurationPageState();
}

class ConfigurationPageState extends State<ConfigurationPage> {
  final List<String> titleName = [
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
  final List<String> useStatus = [
    '利用していない',
    '車椅子利用',
    '電動車椅子利用',
    'スポーツ用車椅子利用',
  ];
  final List<String> caregiver = [
    'なし',
    'あり',
  ];
  final List<String> seniorMode = [
    'オフ',
    'オン',
  ];

  //選択した生年月日を格納する関数
  String userBirthday = '2000/1/1';

  final formatter = DateFormat('yyyy/MM/dd');

  //選択した生年月日をuserBirthdayのstateに格納する関数
  setBirthday(item) {
    setState(
      () {
        userBirthday = item;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Heading(
              name: titleName[0],
              context: context,
            ),
            PulldownList(
              name: titleName[1],
              list: sex,
            ),
            BirthdaySelect(
              name: titleName[2],
              formatter: formatter,
              setBirthday: setBirthday,
              userBirthday: userBirthday,
            ),
            PulldownList(
              name: titleName[3],
              list: useStatus,
            ),
            PulldownList(
              name: titleName[4],
              list: caregiver,
            ),
            PulldownList(
              name: titleName[5],
              list: seniorMode,
            ),
            ConfigPostButton(
              context: context,
            ),
            Heading(
              name: titleName[6],
              context: context,
            ),
            SupportButtons(
              name: titleName[7],
              context: context,
            ),
            SupportButtons(
              name: titleName[8],
              context: context,
            ),
          ],
        ),
      ),
    );
  }
}
