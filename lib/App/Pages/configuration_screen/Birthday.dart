import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Birthday extends StatelessWidget {
  Birthday({
    Key key,
    this.name,
    this.formatter,
    this.setBirthday,
    this.userBirthday,
  });

  final name;
  final formatter;
  final setBirthday;
  final userBirthday;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Padding(
            padding: EdgeInsets.only(top: 19.0, left: 21.0, bottom: 19.0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFFB3BAAB),
              ),
            ),
          ),
          FlatButton(
            child: Text('$userBirthday'),
            onPressed: () {
              DatePicker.showDatePicker(
                context,
                showTitleActions: true,
                minTime: DateTime(1900, 1, 1),
                maxTime: DateTime(2020, 12, 31),
                onChanged: (_) {},
                onConfirm: (date) => setBirthday(date),
                currentTime: DateTime.now(),
                locale: LocaleType.jp,
              );
            },
          ),
        ],
      ),
    );
  }
}
