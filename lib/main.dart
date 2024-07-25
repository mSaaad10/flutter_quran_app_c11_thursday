import 'package:flutter/material.dart';
import 'package:islami_c11_thursday/ui/home/home_screen.dart';
import 'package:islami_c11_thursday/ui/home/tabs/quran_tab/quran_details/quran_deatial_screen.dart';
import 'package:islami_c11_thursday/ui/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        QuranDetailsScreen.routeName: (_) => QuranDetailsScreen(),
      },
      theme: ThemeData(
        cardTheme: CardTheme(
            color: Colors.white,
            elevation: 20,
            margin: EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22))),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            titleTextStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
                color: Colors.black)),
        canvasColor: Color(0xFFB7935F),
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 36,
          ),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        cardTheme: CardTheme(
            color: Colors.white,
            elevation: 20,
            margin: EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22))),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            titleTextStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
                color: Colors.white)),
        scaffoldBackgroundColor: Colors.transparent,
      ),
    );
  }
}
