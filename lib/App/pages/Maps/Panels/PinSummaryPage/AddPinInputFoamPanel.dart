import 'package:flutter/material.dart';

class AddPinInputFoamPanel extends StatefulWidget {
  final sc;

  AddPinInputFoamPanel(
    this.sc,
  );

  @override
  AddPinInputFoamPanelState createState() => AddPinInputFoamPanelState();
}

class AddPinInputFoamPanelState extends State<AddPinInputFoamPanel> {
  String nowfloor;

  //階層の仮データ
  List<String> floorList = ['B1F', '1F', '2F'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: widget.sc,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
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
                  style: Theme.of(context).appBarTheme.textTheme.title,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 24.0,
                        right: 57.0,
                        bottom: 24.0,
                      ),
                      child: Text(
                        '名称',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFB3BAAB),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      margin: EdgeInsets.only(
                        top: 19.0,
                        bottom: 24.0,
                      ),
                      child: TextField(
                        maxLines: 8,
                        decoration: InputDecoration.collapsed(hintText: ""),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 24.0,
                        right: 57.0,
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
                    Padding(
                      padding: EdgeInsets.only(
                        top: 19.0,
                        right: 21.0,
                        bottom: 19.0,
                      ),
                      child: DropdownButton<String>(
                        value: nowfloor,
                        iconSize: 0.0,
                        isDense: true, //これがないとvalueが映せません
                        items: floorList.map(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                        onChanged: (String newValue) => setState(
                          () {
                            nowfloor = newValue;
                          },
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 24.0,
                        right: 57.0,
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
                    Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      margin: EdgeInsets.only(
                        top: 19.0,
                        bottom: 24.0,
                      ),
                      child: TextField(
                        maxLines: 8,
                        decoration: InputDecoration.collapsed(
                          hintText: "",
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
        ));
  }
}
