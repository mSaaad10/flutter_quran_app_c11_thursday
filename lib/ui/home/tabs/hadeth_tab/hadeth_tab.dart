import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c11_thursday/ui/home/tabs/hadeth_tab/hadeth_title_widget.dart';
import 'package:islami_c11_thursday/utils/image_utils.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadithItem> allHadithList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadithList.isEmpty) loadHadithFile();
    return allHadithList.isEmpty
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Image.asset(
                      getImagePathByName('hadeth_header_image.png'))),
              Expanded(
                flex: 3,
                child: ListView.separated(
                    itemBuilder: (context, index) =>
                        HadithTitleWidget(hadith: allHadithList[index]),
                    separatorBuilder: (context, index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 26),
                          color: Theme.of(context).dividerColor,
                          width: double.infinity,
                          height: 2,
                        ),
                    itemCount: allHadithList.length),
              )
            ],
          );
  }

  void loadHadithFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    var allHadith = fileContent.trim().split('#');
    for (int i = 0; i < allHadith.length; i++) {
      // 50
      var hadithLines = allHadith[i].trim().split('\n');

      // tiltle
      // line 2line3
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String hadithContent = hadithLines.join('\n');
      HadithItem hadith = HadithItem(title: title, content: hadithContent);
      allHadithList.add(hadith);
    }
    setState(() {});
  }
}

class HadithItem {
  String title;
  String content;

  HadithItem({required this.title, required this.content});
}
