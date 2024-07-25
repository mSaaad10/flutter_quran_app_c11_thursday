import 'package:flutter/material.dart';

class HadithTitleWidget extends StatelessWidget {
  String hadithTitle;

  HadithTitleWidget({required this.hadithTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6),
      alignment: Alignment.center,
      child: Text(
        hadithTitle,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
    );
  }
}
