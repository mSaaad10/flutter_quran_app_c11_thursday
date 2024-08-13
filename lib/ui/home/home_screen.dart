import 'package:flutter/material.dart';
import 'package:islami_c11_thursday/providers/settings_provider/settings_provider.dart';
import 'package:islami_c11_thursday/ui/home/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:islami_c11_thursday/ui/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_c11_thursday/ui/home/tabs/radio_tab/Radio_tab.dart';
import 'package:islami_c11_thursday/ui/home/tabs/settings_tab/settings_tab_widget.dart';
import 'package:islami_c11_thursday/ui/home/tabs/tasbeh_tab/tasbeh_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(provider.getBackgroundImagePath()))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  // backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage('assets/images/quran_ic.png')),
                  label: AppLocalizations.of(context)!.quran_tab),
              BottomNavigationBarItem(
                  // backgroundColor: Color(0xFFB7935F),

                  icon: ImageIcon(AssetImage('assets/images/hadeth_ic.png')),
                  label: AppLocalizations.of(context)!.hadith_tab),
              BottomNavigationBarItem(
                  // backgroundColor: Color(0xFFB7935F),

                  icon: ImageIcon(AssetImage('assets/images/sebha_ic.png')),
                  label: AppLocalizations.of(context)!.tasbeh_tab),
              BottomNavigationBarItem(

                  // backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage('assets/images/radio_ic.png')),
                  label: AppLocalizations.of(context)!.radio_tab),
              BottomNavigationBarItem(
                  // backgroundColor: Color(0xFFB7935F),

                  icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings_tab),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  var tabs = [
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTabWidget()
  ];
}
