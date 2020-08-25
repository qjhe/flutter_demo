import 'package:flutter/material.dart';
import 'widget/SelfText.dart';
import 'widget/SelfImage.dart';
import 'widget/SelfContainer.dart';
// 计数器
import 'increase/increase.dart';
import 'lakcs/lakcs.dart';
// 无缝滚动
import 'movieScroll/movieScroll.dart';
import 'movieScroll/movieScroll2.dart';
import 'http/selfHttp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: Increase(title: 'increase demo'),
      // home: Lakcs(),
      // home: MoviesScroll2(),
      home: SelfHttp(),
    );
  }
}
