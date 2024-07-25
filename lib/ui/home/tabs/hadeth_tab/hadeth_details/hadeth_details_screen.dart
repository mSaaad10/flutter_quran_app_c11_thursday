import 'package:flutter/material.dart';
import 'package:islami_c11_thursday/ui/home/tabs/hadeth_tab/hadeth_details/hadeth_content_widget.dart';
import 'package:islami_c11_thursday/ui/home/tabs/hadeth_tab/hadeth_tab.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeName = '/hadith';

  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadithItem hadith =
        ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/main_background.png'))),
      child: Scaffold(
          appBar: AppBar(
            title: Text(hadith.title),
          ),
          body: Card(
            child: HadithContentWidget(
              content: hadith.content,
            ),
          )),
    );
  }
}
