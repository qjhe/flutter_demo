import 'package:flutter/material.dart';

class SelfText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Hello Flutter!',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.green,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
