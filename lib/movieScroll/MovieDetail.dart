import 'package:flutter/material.dart';

class MovieDetail extends StatelessWidget {
  MovieDetail({Key key, this.url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('电影详情'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Image(image: NetworkImage('$url')),
          GestureDetector(
            onTap: () {
              // 返回上级页面
              Navigator.of(context).pop('49亿');
            },
            child: Text('查看更多...', style: TextStyle(fontSize: 28)),
          ),
        ],
      )),
    );
  }
}
