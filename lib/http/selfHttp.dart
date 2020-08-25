import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class SelfHttp extends StatefulWidget {
  @override
  _SelfHttpState createState() => _SelfHttpState();
}

class _SelfHttpState extends State<SelfHttp> {
  @override
  void initState() {
    getMoiveList2();
    super.initState();
  }

  void getMoiveList2() async {
    print('getMoiveList2');
    try {
      String url =
          'https://show.maoyan.com/maoyansh/myshow/ajax/ad/detail?uuid=a91q7wm9mg625tdilpwbs6i3jhobrrmk3kmpfi2wop16rsi8aj2yifq4yzvd0gb2&clientType=1&os=1&sellChannel=13&cityId=1&lng=0&lat=0';
      Dio dio = new Dio();
      Response response;
      response = await dio.get(url);
      print(response.data.toString());
    } catch (err) {
      print('$err');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('SelfHttp demo'),
      ),
    );
  }
}
