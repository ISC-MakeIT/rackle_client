import 'package:flutter/material.dart';
import './News/NewsPage.dart';


class Newslist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 628,
        child: ListView.builder(
        padding: EdgeInsets.only(top: 0.0),
        //itemCount: 2,
        itemBuilder: (context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
              context,
              new MaterialPageRoute<Null>(
                settings: const RouteSettings(name: '/news'),
                builder: (BuildContext context) => NewsPage(),
              ),
              );
            },
            child: Container(
              padding: EdgeInsets.only(top: 25.0,bottom :27.0,),
              decoration:  BoxDecoration(
                border: Border(
                bottom: BorderSide(color: Color(0xFFB3BAAB),),
                ),
              ),
              child :ListTile(
                title: Container(
                  padding:  EdgeInsets.only(bottom:9.0),
                  child: Text(
                    "アップデートのお知らせ",
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    ),
                  ),
                ),
                subtitle: Row(
                  children: <Widget> [
                    Icon(Icons.access_time,
                      size: 13.33,
                      color: Color(0xFFB3BAAB),
                    ),
                    Text("  List[index],"),
                  ]
                ),
                trailing: Icon(Icons.navigate_next,
                            color: Color(0xFFB3BAAB),
                            size: 25.55,
                          ),
              ),
            ),
          );
         },
      ),
    );
  }
}
