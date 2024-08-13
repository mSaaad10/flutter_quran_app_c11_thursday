import 'package:flutter/material.dart';
import 'package:islami_c11_thursday/providers/settings_provider/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.changeLanguage('en');
              },
              child: provider.currentLanguage == 'en'
                  ? buildSelectedItem('English')
                  : buildUnSelectedItem('English')),
          SizedBox(
            height: 8,
          ),
          InkWell(
              onTap: () {
                provider.changeLanguage('ar');
              },
              child: provider.currentLanguage == 'ar'
                  ? buildSelectedItem('العربيه')
                  : buildUnSelectedItem('العربيه')),
        ],
      ),
    );
  }

  Widget buildSelectedItem(String language) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          language,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Container(
            child: Icon(
          Icons.check,
          color: Theme.of(context).indicatorColor,
        ))
      ],
    );
  }

  Widget buildUnSelectedItem(String language) {
    return Row(
      children: [
        Text(language, style: Theme.of(context).textTheme.displayMedium),
      ],
    );
  }
}
