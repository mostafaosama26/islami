import 'package:flutter/material.dart';
import 'package:islami/ui/providers/language_provider.dart';
import 'package:islami/ui/utils/app_colors.dart';
import 'package:islami/ui/utils/app_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isDarkThemeEnabled = false;
  late LanguageProvider provider;
  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,style: AppStyle.titlesTextStyle,),
          buildLanguageDropdown(),
          buildThemeSwitch(),
        ],
      ),
    );
  }

  Widget buildLanguageDropdown() => DropdownButton(
    isExpanded: true,
    value: provider.locale,
    onChanged: (value) {
      provider.locale = value?? provider.locale;
      provider.notifyListeners();
      setState(() {
      });
    },
    items: [
      DropdownMenuItem(
      value: 'ar',
      child: Text('العربية'),
  ),
      DropdownMenuItem(
        value: 'en',
        child: Text('English'),
      ),
    ],
  );

  buildThemeSwitch() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(AppLocalizations.of(context)!.theme,style: AppStyle.titlesTextStyle,),
      Switch(
        activeColor: AppColors.primaryColor,
          value: isDarkThemeEnabled,
          onChanged: (value){
            setState(() {
              isDarkThemeEnabled = value;
            });
          }),
    ],
  );
}
