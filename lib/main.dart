import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_c11_thursday/providers/settings_provider/settings_provider.dart';
import 'package:islami_c11_thursday/styles/my_theme_data.dart';
import 'package:islami_c11_thursday/ui/home/home_screen.dart';
import 'package:islami_c11_thursday/ui/home/tabs/hadeth_tab/hadeth_details/hadeth_details_screen.dart';
import 'package:islami_c11_thursday/ui/home/tabs/quran_tab/quran_details/quran_deatial_screen.dart';
import 'package:islami_c11_thursday/ui/splash_screen/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: [
          Locale('en'), // English
          Locale('ar'), // Spanish
        ],
        locale: Locale(provider.currentLanguage),
        routes: {
          SplashScreen.routeName: (_) => SplashScreen(),
          HomeScreen.routeName: (_) => HomeScreen(),
          QuranDetailsScreen.routeName: (_) => QuranDetailsScreen(),
          HadithDetailsScreen.routeName: (_) => HadithDetailsScreen(),
        },
        theme: MyThemeData.lightTheme,
        darkTheme: MyThemeData.darkTheme,
        themeMode: provider.currentThemeMode);
  }
}
