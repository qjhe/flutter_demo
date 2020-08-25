import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          // 左侧
          // 弹性布局组件
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    '第一段文字说明',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  '第二段文字，说明',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // 中 星星
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          // 右侧
          Text('41')
        ],
      ),
    );
  }
}
