import 'package:flutter/material.dart';

void main() {
  // runApp系统函数，执行渲染
  runApp(MyApp());
}

// 无状态组件
class MyApp extends StatelessWidget {
  // Widget 返回值是一个组件类型
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // html title
      title: 'app',
      // 规定当前组件默认颜色
      theme: ThemeData(primarySwatch: Colors.blue),
      // 传递一个自定义组件
      home: MyHomePage(),
    );
  }
}

// 组件都是类
class MyHomePage extends StatelessWidget {
  // build系统规定的渲染函数，静态组件中都必须传递build函数来渲染
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 给Scaffold类传参
      appBar: AppBar(
        title: Text('flutter demo'),
      ),
      body: Center(
        child: Text('Hello flutter'),
      ),
    );
  }
}

// flutter run运行项目按r、R刷新页面 【调试数据】
// 使用 调试--启动调试 热加载 【调试UI界面】
