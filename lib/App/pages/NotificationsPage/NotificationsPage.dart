import 'package:flutter/material.dart';

import 'NewsListViewer/NewsListViewer.dart';
import 'package:rackle_client/Models/models.dart';

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
      body: FutureBuilder(
        future: NewsModel().value,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListViewer(
              newsList: snapshot.data,
            );
          } else if (snapshot.connectionState != ConnectionState.done) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          }
          return null;
        },
      ),
    );
  }
}
