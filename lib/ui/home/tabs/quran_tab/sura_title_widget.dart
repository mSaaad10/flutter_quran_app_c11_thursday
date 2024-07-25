import 'package:flutter/material.dart';
import 'package:islami_c11_thursday/ui/home/tabs/quran_tab/quran_details/quran_deatial_screen.dart';

class SuraTitleWidget extends StatelessWidget {
  String suraTitle;
  int index;

  SuraTitleWidget({required this.suraTitle, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, QuranDetailsScreen.routeName,
            arguments: SuraArguments(title: suraTitle, index: index));
      },
      child: Container(
          alignment: Alignment.center,
          child: Text(
            suraTitle,
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w400, color: Colors.black),
          )),
    );
  }
}

class SuraArguments {
  String title;
  int index;

  SuraArguments({required this.title, required this.index});
}
