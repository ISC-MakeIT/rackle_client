import 'package:flutter/material.dart';

class SelectStation extends StatelessWidget {
  final onPush;
  SelectStation({this.onPush});

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => onPush(0, 0),
      ),
    );
  }
}
