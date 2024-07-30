import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:islami/ui/screens/home/tabs/ahadeth/ahadeth.dart';
import 'package:islami/ui/screens/home/tabs/quran/quran.dart';
import 'package:islami/ui/screens/home/tabs/radio/app_radio.dart';
import 'package:islami/ui/screens/home/tabs/sebha/sebha.dart';
import 'package:islami/ui/screens/home/tabs/settings/setting.dart';
import 'package:islami/ui/utils/app_assets.dart';
import 'package:islami/ui/utils/app_colors.dart';
import 'package:islami/ui/utils/app_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/ui/utils/extensions/build_context_extensions.dart';

class Home extends StatefulWidget {
  static const String routeName = 'home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTabIndex = 0;
  List<Widget> currentTabBody = [Quran(),Sebha(),AppRadio(),Ahadeth(),Settings()];
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.lightBackground)),
      ),
      child: Scaffold(
        body: currentTabBody[selectedTabIndex],
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          title: Text(context.locale.islami,),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
            onTap: (index){
              setState(() {
                selectedTabIndex = index;
              });
            },
            selectedItemColor: AppColors.accentColor,
            selectedIconTheme: IconThemeData(size: 38),
            unselectedIconTheme: IconThemeData(size: 34),
            currentIndex: selectedTabIndex,
            items:  [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icQuran)),label: 'Quran'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icSebha)),label: 'Sebha'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icRadio)),label: 'Radio'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icAhadeth)),label: 'Ahadeth'),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: context.locale.settings)
            ],
          ),
        ),
      ),
    );
  }
}


