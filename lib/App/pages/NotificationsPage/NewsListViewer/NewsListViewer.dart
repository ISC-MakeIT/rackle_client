import 'package:flutter/material.dart';

import 'NewsListItem.dart';
import 'Article/Article.dart';

class NewsListViewer extends StatelessWidget {
  final List newsList;

  NewsListViewer({Key key, this.newsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Article(
                  news: newsList[index],
                ),
              )
            );
          },
          child: Container(
            padding: EdgeInsets.only(
              top: 25.0,
              bottom: 27.0,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFFE5E8E0),
                ),
              ),
            ),
            child: NewsListItem(
              news: newsList[index],
            ),
          ),
        );
      },
    );
  }
}
