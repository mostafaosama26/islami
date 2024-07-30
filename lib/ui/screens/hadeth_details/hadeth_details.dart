import 'package:flutter/material.dart';

import '../../utils/app_assets.dart';
import '../../utils/app_classes.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_style.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadeth_details';
   HadethDetails({super.key});
  late Hadeth args;
  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.lightBackground))),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
            backgroundColor: AppColors.transparent,
            elevation: 0,
            title: Center(child: Container(margin: EdgeInsets.only(right: 50),child: const Text('islami',style: AppStyle.appBarStyle,)))),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Container(
                      width: (MediaQuery.of(context).size.width * 90/100 ),
                      height: (MediaQuery.of(context).size.height * 80/100 ),
                      color: Color(0x80ffffff),
                      child: Container(
                          margin: EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Text('${args.title}',style: AppStyle.titlesTextStyle,),
                              Padding(
                                padding: const EdgeInsets.only(left: 50,right: 50),
                                child: Divider(thickness: 2,color: AppColors.primaryColor,),
                              ),
                              Expanded(
                                child: ListView(
                                  children: [
                                    Text('${args.content}',textDirection: TextDirection.rtl,style: AppStyle.suraTextStyle,),
                                  ],
                                ),
                              ),
                            ],
                          ))
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
