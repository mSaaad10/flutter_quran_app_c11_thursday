import 'package:flutter/material.dart';

class MyThemeData {
  static const Color yellowColor = Color(0xFFFACC1D);
  static const Color goldColor = Color(0xFFB7935F);
  static const Color darkBlue = Color(0xFF141A2E);
  static ThemeData lightTheme = ThemeData(
      //canvasColor: goldColor,
      primaryColor: goldColor,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 22, color: Colors.black)),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 36,
        ),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
      indicatorColor: Colors.black,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
        elevation: 18,
      ),
      cardTheme: CardTheme(
          color: Colors.white,
          elevation: 20,
          margin: EdgeInsets.all(12),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
      dividerColor: goldColor,
      textTheme: TextTheme(
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
          bodySmall: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 18, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 18, color: Colors.black),
          labelMedium: TextStyle(
              color: goldColor, fontSize: 14, fontWeight: FontWeight.w700),
          displayMedium: TextStyle(
            fontSize: 12,
            color: Colors.black,
          )));
  static ThemeData darkTheme = ThemeData(
      //canvasColor: darkBlue,
      primaryColor: darkBlue,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 22, color: Colors.white)),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          color: Color(0xFFFACC1D),
          size: 36,
        ),
        selectedItemColor: Color(0xFFFACC1D),
        unselectedItemColor: Colors.white,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkBlue,
        elevation: 18,
      ),
      indicatorColor: yellowColor,
      cardTheme: CardTheme(
          color: Color(0xFF141A2E),
          elevation: 20,
          margin: EdgeInsets.all(12),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
      dividerColor: yellowColor,
      textTheme: TextTheme(
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
          bodySmall: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 18, color: yellowColor),
          labelMedium: TextStyle(
              color: yellowColor, fontSize: 14, fontWeight: FontWeight.w700),
          displayMedium: TextStyle(
            fontSize: 12,
            color: yellowColor,
          )));
}
