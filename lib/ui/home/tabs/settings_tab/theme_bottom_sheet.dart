import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c11_thursday/providers/settings_provider/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.changeThemeMode(ThemeMode.light);
              },
              child: provider.currentThemeMode == ThemeMode.light
                  ? buildSelectedItemTheme(AppLocalizations.of(context)!.light)
                  : buildUnSelectedItemTheme(
                      AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                provider.changeThemeMode(ThemeMode.dark);
              },
              child: provider.currentThemeMode == ThemeMode.dark
                  ? buildSelectedItemTheme(AppLocalizations.of(context)!.dark)
                  : buildUnSelectedItemTheme(
                      AppLocalizations.of(context)!.dark))
        ],
      ),
    );
  }

  Widget buildSelectedItemTheme(String selectedTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(selectedTheme, style: Theme.of(context).textTheme.displayMedium),
        Container(
            child: Icon(
          Icons.check,
          color: Theme.of(context).indicatorColor,
        ))
      ],
    );
  }

  Widget buildUnSelectedItemTheme(String unSelectedTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(unSelectedTheme, style: Theme.of(context).textTheme.displayMedium),
      ],
    );
  }
}
