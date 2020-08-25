import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// StatefulWidget 动态组件
class Increase extends StatefulWidget {
  // 传参 类的重写 我们使用这种方式传参时可以的
  // Increase({this.title})

  Increase({Key key, this.title}) : super(key: key);
  final String title;

  @override
  // State<StatefulWidget> createState() {}
  _IncreaseState createState() {
    return _IncreaseState();
  }
}

// 动态组件的控制器，对组件内部状态控制，并渲染被控制组件的的UI结构
// 命名要求 _被控制组件名称State
// State<> 这个尖括号要写被控制组件名

// 在变量中瞎花钱的用法要谨慎，当下划线在变量名前时代表这个组件或这个函数/值是私有的（私有的不能导出）
class _IncreaseState extends State<Increase> {
  // 控制器内部的build函数，用来渲染被控制组件的UI结构

  // 当前页面数字增加，定义一个状态变量值
  int _counter = 0;
  // 数字自增函数
  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}'),
      ),
      // flutter中widget代表被控制的组件，widget.参数名 拿到参数
      body: Center(
        // Column从上到下排列组件的盒子
        child: Column(
          // Column的排列方式
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Please press the button'),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _increaseCounter,
        tooltip: 'increase button',
        child: Icon(Icons.add),
      ),
    );
  }
}
