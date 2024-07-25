import 'package:flutter/material.dart';

class HadithContentWidget extends StatelessWidget {
  String content;

  HadithContentWidget({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: SingleChildScrollView(
          child: Text(
        content,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      )),
    );
  }
}
