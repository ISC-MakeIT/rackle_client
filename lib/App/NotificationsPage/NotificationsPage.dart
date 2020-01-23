import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  @override
  NotificationsPageState createState() => NotificationsPageState();
}

class NotificationsPageState extends State<NotificationsPage> {
  Color _iconColor() => Theme.of(context).iconTheme.color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('お知らせ'),
      ),
      body: Center(
        child: ListView.builder(
        itemCount: List.length,
        itemBuilder: (context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
              context,
              new MaterialPageRoute<Null>(
                settings: const RouteSettings(name: '/notifications'),
                builder: (BuildContext context) => NewsPage(),
              ),
            );
            },
            child: Container(
              decoration: new BoxDecoration(
                border: new Border(
                bottom: new BorderSide(color: _iconColor()),
                ),
              ),
              child :ListTile(
                title: Text(List[index],),
                subtitle: Text(List[index],),
                trailing: Icon(Icons.navigate_next,
                  color: _iconColor(),),
              ),
            ),
          );
         },
        ),
    ),

    );
  }
}