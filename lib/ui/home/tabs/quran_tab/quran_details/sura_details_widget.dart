import 'package:flutter/material.dart';

class SuraDetailsWidget extends StatelessWidget {
  SuraDetailsWidget({required this.verse});

  String verse;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      alignment: Alignment.center,
      child: Text(
        verse,
        style: Theme.of(context).textTheme.bodyMedium,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
      ),
    );
  }
}
