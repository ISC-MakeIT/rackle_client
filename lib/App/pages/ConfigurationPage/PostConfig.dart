import 'package:flutter/material.dart';

class PostConfig extends StatelessWidget {
  PostConfig({
    Key key,
    this.context,
  });

  final context;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 24.0,
      ),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF26BD95),
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          height: 56.0,
          width: MediaQuery.of(context).size.width * 0.90,
          child: const Center(
            child: const Text(
              '設定を変更',
              style: TextStyle(
                color: Color(0xFF26BD95),
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
