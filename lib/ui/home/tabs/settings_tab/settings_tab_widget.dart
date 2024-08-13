import 'package:flutter/material.dart';
import 'package:islami_c11_thursday/providers/settings_provider/settings_provider.dart';
import 'package:islami_c11_thursday/ui/home/tabs/settings_tab/language_bottom_sheet.dart';
import 'package:islami_c11_thursday/ui/home/tabs/settings_tab/theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SettingsTabWidget extends StatefulWidget {
  @override
  State<SettingsTabWidget> createState() => _SettingsTabWidgetState();
}

class _SettingsTabWidgetState extends State<SettingsTabWidget> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.labelMedium),
          SizedBox(
            height: 4,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    border: Border.all(
                      width: 2,
                      color: Color(0xFFB7935F),
                    )),
                child: Text(
                  provider.currentThemeMode == ThemeMode.light
                      ? AppLocalizations.of(context)!.light
                      : AppLocalizations.of(context)!.dark,
                  style: Theme.of(context).textTheme.labelMedium,
                )),
          ),
          SizedBox(
            height: 8,
          ),
          Text(AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.labelMedium),
          SizedBox(
            height: 4,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    border: Border.all(
                      width: 2,
                      color: Color(0xFFB7935F),
                    )),
                child: Text(
                  provider.currentLanguage == 'en' ? ' English' : 'العربيه',
                  style: Theme.of(context).textTheme.labelMedium,
                )),
          )
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheet(),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }
}
