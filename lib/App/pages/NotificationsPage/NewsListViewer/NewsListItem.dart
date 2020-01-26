import 'package:flutter/material.dart';

import 'NewArrivalMark/NewArrivalMark.dart';

class NewsListItem extends StatelessWidget {
  final Map<String, String> news;

  NewsListItem({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> newsTitle = [
      Text(
        news['title'],
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    ];

    if (news['id'] == '1') {
      newsTitle.add(NewArrivalMark());
    }

    return ListTile(
      title: Container(
        padding: EdgeInsets.only(bottom: 8),
        child: Row(
          children: newsTitle,
        ),
      ),
      subtitle: Row(children: <Widget>[
        Icon(
          Icons.access_time,
          size: 12,
          color: Color(0xFFB3BAAB),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8),
        ),
        Text(
          news['created_at'],
          style: TextStyle(fontSize: 11.32),
        ),
      ]),
      trailing: Icon(
        Icons.navigate_next,
        color: Color(0xFFB3BAAB),
        size: 14,
      ),
    );
  }
}
