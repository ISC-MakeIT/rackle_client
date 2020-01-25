import 'package:flutter/material.dart';

class SupportButtons extends StatelessWidget {
  SupportButtons({
    Key key,
    this.name,
    this.context,
  });

  final name;
  final context;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 64.0,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xFFE5E8E0),
          ),
        ),
      ),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.only(
            top: 19.0,
            left: 21.0,
            bottom: 19.0,
          ),
          child: Text(
            name,
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
