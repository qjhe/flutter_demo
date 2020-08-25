import 'package:flutter/material.dart';

class MoviesScroll extends StatelessWidget {
  final List imgList = [
    'https://p0.meituan.net/170.230/movie/22857bface4d3e8586c8f45858d4fa92662013.jpg',
    'https://p0.meituan.net/170.230/moviemachine/e2a4f9f2e884e4cdd5c6f8412c805d61765750.jpg',
    'https://p1.meituan.net/170.230/moviemachine/a448ca6a5f4dafb88067722303ca0cfd96002.jpg',
    'https://p0.meituan.net/170.230/moviemachine/4755165ffd65eb737bb5160ea911e0fa343438.jpg',
    'https://p0.meituan.net/170.230/moviemachine/27e15446e9e4999fa54bbad940b5a8363531802.jpg',
    'https://p0.meituan.net/170.230/moviemachine/7e6118993dbf0f304ac1dad4667fddda207318.jpg',
    'https://p0.meituan.net/170.230/movie/396a1e77ff4ef838a1c697ffbc71a8bb2730189.jpg',
    'https://p0.meituan.net/170.230/moviemachine/d47f1664fb311e562fec0911d1f927e4527927.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    List<Widget> imgs = [];
    for (var item in imgList) {
      imgs.add(_ImgItems(url: item));
    }
    return Scaffold(
      // ListView一个排列的组件盒子，可以纵向或横向排版
      body: Container(
        margin: EdgeInsets.only(top: 50),
        height: 115,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: imgs,
        ),
      ),
    );
  }
}

class _ImgItems extends StatelessWidget {
  _ImgItems({Key key, @required this.url}) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 85,
      child: Image(
        image: NetworkImage('$url'),
        fit: BoxFit.cover,
      ),
    );
  }
}

// ListView ListView.builder：不会溢出，会有滚动条
// 和Column/Row排版区别：会溢出，类似于一个盒子横着放或竖着放，放多了溢出
