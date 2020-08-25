import 'package:flutter/material.dart';

class IconSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _IconItem(title: 'CALL', icon: Icons.call),
          _IconItem(title: 'ROUTE', icon: Icons.near_me),
          _IconItem(title: 'SHARE', icon: Icons.share),
        ],
      ),
    );
  }
}

class _IconItem extends StatelessWidget {
  // 类的重写，使当前类由无参变有参 @required必填
  _IconItem({
    Key key,
    @required this.icon,
    @required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Icon(
            icon,
            color: Colors.blue,
          ),
        ),
        Text(
          '$title',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
