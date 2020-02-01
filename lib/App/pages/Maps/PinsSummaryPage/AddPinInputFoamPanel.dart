import 'package:flutter/material.dart';

class AddPinInputFoamPanel extends StatelessWidget {
  AddPinInputFoamPanel({
    Key key,
    this.sc,
  });

  final sc;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: sc,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              top: 27,
              bottom: 8,
            ),
            child: Text(
              'マイピンの設定',
              style: TextStyle(
                fontSize: 22.62,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 74,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.5,
                  color: Color(0xFFE5E8E0),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(
                    top: 24.0,
                    bottom: 24.0,
                  ),
                  child: Text(
                    '名前',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFB3BAAB),
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    maxLines: 8,
                    decoration: InputDecoration.collapsed(
                      hintText: 'hello',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 74,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.5,
                  color: Color(0xFFE5E8E0),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(
                    top: 24.0,
                    bottom: 24.0,
                  ),
                  child: Text(
                    '階層',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFB3BAAB),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 74,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.5,
                  color: Color(0xFFE5E8E0),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(
                    top: 24.0,
                    bottom: 24.0,
                  ),
                  child: Text(
                    'コメント',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFB3BAAB),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 204,
            margin: EdgeInsets.only(
              top: 39,
              bottom: 24,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Color(0xFFEFF2EA).withOpacity(0.5),
            ),
            child: Center(
              child: Text(
                '画像をアップロード',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFB3BAAB),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 56,
            margin: EdgeInsets.only(
              bottom: 21,
            ),
            child: RaisedButton(
              onPressed: () {},
              color: Color(0xff26BD95),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Text(
                "マイピンを登録する",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
