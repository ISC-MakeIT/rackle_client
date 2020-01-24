import 'package:flutter/material.dart';

import './Heading.dart';
import './PulldownList.dart';
import './PostConfig.dart';
import './SupportButtons.dart';

class ConfigurationViews extends StatelessWidget {
  final List<String> name = [
    'ユーザー設定',
    '性別',
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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Heading(name: name[0], context: context, margin: margin),
            PulldownList(name: name[1], list: sex),
            PulldownList(name: name[2], list: used),
            PulldownList(name: name[3], list: caregiver),
            PulldownList(name: name[4], list: senior),
            PostConfig(context: context),
            Heading(name: name[5], context: context, margin: margin),
            SupportButtons(name: name[6], context: context),
            SupportButtons(name: name[7], context: context),
          ],
        ),
      ),
    );
  }
}
