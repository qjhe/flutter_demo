import 'dart:ui';

import 'package:flutter/material.dart';

class SelfImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        // 在里面添加图片，网络或本地
        child: Image(
          // 图片伸展方式
          fit: BoxFit.cover,
          // image: NetworkImage('https://cn.vuejs.org/images/logo.png'),
          image: AssetImage('images/cat.jpg'),
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
