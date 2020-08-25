import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 15),
      child: Text(
        '''tip:image组件默认宽度300px、高度225px tip:image组件中二维码/小程序码图片不支持长按识别。仅在wx.previewImage中支持长按识别示例代码,Image 对象代表嵌入的图像。标签每出现一次,一个 Image 对象就会被创建。Image 对象的属性属性描述 align 设置或返回与内联内容的对齐方式。alt 设置或返回无法''',
        style: TextStyle(height: 1.1),
      ),
    );
  }
}
