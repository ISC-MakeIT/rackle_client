import 'package:flutter/material.dart';

import 'NewsListViewer/NewsListViewer.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'お知らせ',
          textAlign: TextAlign.left,
        ),
        backgroundColor: Color(0XFFFFFFFF),
      ),
      body: NewsListViewer(
        newsList: [
          {
            'id': '1',
            'title': 'アップデートのお知らせ',
            'body': '親譲りの無鉄砲で小供の時から損ばかりしている。小学校に居る時分学校の二階から飛び降りて一週間ほど腰を抜かした事がある。なぜそんな無闇をしたと聞く人があるかも知れぬ。別段深い理由でもない。新築の二階から首を出していたら、同級生の一人が冗談に、いくら威張っても、そこから飛び降りる事は出来まい。',
            'created_at': '${DateTime.now().toLocal()}',
          }
        ],
      ),
    );
  }
}
