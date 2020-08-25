import 'package:flutter/material.dart';
import 'TitleSection.dart';
import 'IconSection.dart';
import 'TextSection.dart';

class Lakcs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Image(
          image: AssetImage('images/bg.png'),
        ),
        // 第二部分
        TitleSection(),
        // 第三部分
        IconSection(),
        // 第四部分
        TextSection(),
      ],
    ));
  }
}
