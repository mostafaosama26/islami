import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:islami/ui/screens/home/tabs/ahadeth/ahadeth.dart';
import 'package:islami/ui/screens/home/tabs/quran/quran.dart';
import 'package:islami/ui/screens/home/tabs/radio/app_radio.dart';
import 'package:islami/ui/screens/home/tabs/sebha/sebha.dart';
import 'package:islami/ui/utils/app_assets.dart';
import 'package:islami/ui/utils/app_colors.dart';
import 'package:islami/ui/utils/app_style.dart';

class Home extends StatefulWidget {
  static const String routeName = 'home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTabIndex = 0;
  List<Widget> currentTabBody = [Quran(),Sebha(),AppRadio(),Ahadeth()];
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.lightBackground)),
      ),
      child: Scaffold(
        body: currentTabBody[0],
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          elevation: 0,
          title: Center(child: const Text('islami',style: AppStyle.appBarStyle,)),
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(canvasColor: AppColors.primaryColor),
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
            items: const [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icQuran)),label: 'Quran'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icSebha)),label: 'Sebha'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icRadio)),label: 'Radio'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icAhadeth)),label: 'Ahadeth'),
            ],
          ),
        ),
      ),
    );
  }
}
