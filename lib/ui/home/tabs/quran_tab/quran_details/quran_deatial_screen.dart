import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c11_thursday/providers/settings_provider/settings_provider.dart';
import 'package:islami_c11_thursday/ui/home/tabs/quran_tab/quran_details/sura_details_widget.dart';
import 'package:islami_c11_thursday/ui/home/tabs/quran_tab/sura_title_widget.dart';
import 'package:provider/provider.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeName = '/quran';

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    SuraArguments arguments =
        ModalRoute.of(context)?.settings.arguments as SuraArguments;
    if (verses.isEmpty) readQuranFileContent(arguments.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(provider.getBackgroundImagePath()))),
      child: Scaffold(
          appBar: AppBar(
            title: Text(arguments.title),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Card(
                  child: ListView.separated(
                  separatorBuilder: (context, index) => Container(
                  color: Theme.of(context).dividerColor,
                    width: double.infinity,
                    height: 2,
                    margin: EdgeInsets.symmetric(horizontal: 22),
                  ),
                itemBuilder: (context, index) =>
                    SuraDetailsWidget(verse: verses[index]),
                itemCount: verses.length,
              ))),
    );
  }

  void readQuranFileContent(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = fileContent.split('\n');
    verses = suraLines;

    setState(() {});
  }
}
