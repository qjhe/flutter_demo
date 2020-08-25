import 'package:flutter/material.dart';

class SelfContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        // BoxDecoration 背景色 背景图 边框。。。
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        width: 100,
        height: 100,
        margin: EdgeInsets.all(30),
      ),
    );
  }
}
