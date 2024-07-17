import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:islami/ui/utils/app_assets.dart';
import 'package:islami/ui/utils/app_classes.dart';
import 'package:islami/ui/utils/app_colors.dart';
import 'package:islami/ui/utils/app_style.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 28,child: Image.asset(AppAssets.quranTabLogo)),
        Expanded(
          flex: 72,
          child: Stack(
             children: [
               Column(
                 children: [
                   Container(width: double.infinity,color: AppColors.primaryColor,height: 3,),
                   Spacer(flex: 1,),
                   Row(
                     children: [
                       Expanded(child: Text('Name',textAlign: TextAlign.center,style: AppStyle.titlesTextStyle,)),
                       Expanded(child: Text('Verses',textAlign: TextAlign.center,style: AppStyle.titlesTextStyle,)),
                     ],
                   ),
                   Spacer(flex: 1,),
                   Container(width: double.infinity,color: AppColors.primaryColor,height: 3,),
                   buildSurasList(),
                 ],
               ),
               Center(child: VerticalDivider(thickness: 3,color: AppColors.primaryColor,))
             ],
          ),
        ),
      ],
    );
  }
  Widget buildSurasList() => Expanded(
      flex: 70,
      child: ListView.builder(
        itemCount: SuraNames.suraNames.length,
        itemBuilder: (context, index) => Row(
          children: [
            Expanded(child: Text(SuraNames.suraNames[index],textAlign: TextAlign.center,style: AppStyle.titlesTextStyle,)),
            Expanded(child: Text((VersesNumber.versesNumber[index]).toString(),textAlign: TextAlign.center,style: AppStyle.titlesTextStyle,)),
          ],
        ),
      ),
  );
}
