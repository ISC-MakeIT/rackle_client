import 'package:flutter/material.dart';

class Article extends StatelessWidget {
  final Map<String, String> news;

  Article({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          news['title'],
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0XFFFFFFFF),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              bottom: 10,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start, 
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 19,
                ),
              ),
              Icon(
                Icons.access_time,
                size: 14,
                color: Color(0xFFB3BAAB),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8
                ),
              ),
              Text(
                news['created_at'],
                style: TextStyle(
                  fontSize: 16, 
                  color: Color(0xFFB3BAAB)
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 27,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 19 * 2,
            child: Text(news['body'],
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
