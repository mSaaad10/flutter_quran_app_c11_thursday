import 'package:flutter/material.dart';
import 'package:islami_c11_thursday/providers/settings_provider/settings_provider.dart';
import 'package:islami_c11_thursday/ui/home/tabs/hadeth_tab/hadeth_details/hadeth_content_widget.dart';
import 'package:islami_c11_thursday/ui/home/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:provider/provider.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeName = '/hadith';

  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    HadithItem hadith =
        ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(provider.getBackgroundImagePath()))),
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
