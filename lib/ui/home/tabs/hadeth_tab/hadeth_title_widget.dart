import 'package:flutter/material.dart';
import 'package:islami_c11_thursday/ui/home/tabs/hadeth_tab/hadeth_details/hadeth_details_screen.dart';
import 'package:islami_c11_thursday/ui/home/tabs/hadeth_tab/hadeth_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithItem hadith;

  HadithTitleWidget({required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          HadithDetailsScreen.routeName,
          arguments: hadith,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6),
        alignment: Alignment.center,
        child: Text(
          hadith.title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
