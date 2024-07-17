import 'package:flutter/material.dart';
import 'package:islami/ui/utils/app_assets.dart';
import 'package:islami/ui/utils/app_colors.dart';
import 'package:islami/ui/utils/app_style.dart';

class Home extends StatelessWidget {
  static const String routeName = 'home';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.lightBackground)),
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          elevation: 0,
          title: Center(child: Text('islami',style: AppStyle.appBarStyle,)),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icQuran)),label: 'Quran'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icSebha)),label: 'Sebha'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icRadio)),label: 'Radio'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icAhadeth)),label: 'Ahadeth'),
          ],
        ),
      ),
    );
  }
}
