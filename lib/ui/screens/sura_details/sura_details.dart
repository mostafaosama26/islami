import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/utils/app_classes.dart';
import 'package:islami/ui/utils/app_style.dart';

import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'sura_details';
   SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  late SuraDetailsArgs args;

  String fileContent = '';

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if(fileContent.isEmpty){
      readFile();
    };
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
                              Text('سورة ${args.suraName}',style: AppStyle.titlesTextStyle,),
                              Padding(
                                padding: const EdgeInsets.only(left: 50,right: 50),
                                child: Divider(thickness: 2,color: AppColors.primaryColor,),
                              ),
                              Expanded(
                                child: ListView(
                                  children: [
                                    Text('$fileContent',textDirection: TextDirection.rtl,style: AppStyle.suraTextStyle,),
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

   Future readFile() async{
      fileContent = await rootBundle.loadString('assets/files/quran/${args.fileName}');
      List<String> fileLines = fileContent.split('\n');
      List<String> fileLinesEdited = [];
      for(int i = 0 ; i < fileLines.length ; i++)
      {
        fileLines[i] = fileLines[i].trim();
        if(fileLines[i].isNotEmpty)
        {
          fileLinesEdited.add(fileLines[i]);
        }
      }
      for(int i = 0 ; i < fileLinesEdited.length ; i++)
        {
          fileLinesEdited[i] = '${fileLinesEdited[i]}(${i+1})';
        }
      fileContent = fileLinesEdited.join();
      setState(() {});
  }
}
