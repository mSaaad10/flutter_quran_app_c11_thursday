import 'package:flutter/material.dart';
import 'package:islami_c11_thursday/ui/home/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:islami_c11_thursday/ui/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_c11_thursday/ui/home/tabs/radio_tab/Radio_tab.dart';
import 'package:islami_c11_thursday/ui/home/tabs/tasbeh_tab/tasbeh_tab.dart';

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
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/main_background.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Islami app',
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xFFB7935F),
          ),
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
                  label: 'Quran'),
              BottomNavigationBarItem(
                  // backgroundColor: Color(0xFFB7935F),

                  icon: ImageIcon(AssetImage('assets/images/hadeth_ic.png')),
                  label: 'Hadeth'),
              BottomNavigationBarItem(
                  // backgroundColor: Color(0xFFB7935F),

                  icon: ImageIcon(AssetImage('assets/images/sebha_ic.png')),
                  label: 'Tasbeh'),
              BottomNavigationBarItem(

                  // backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage('assets/images/radio_ic.png')),
                  label: 'Radio'),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  var tabs = [QuranTab(), HadethTab(), TasbehTab(), RadioTab()];
}
