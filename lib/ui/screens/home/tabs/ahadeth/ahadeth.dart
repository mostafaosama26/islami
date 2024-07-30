import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/screens/hadeth_details/hadeth_details.dart';
import 'package:islami/ui/utils/app_assets.dart';
import 'package:islami/ui/utils/app_classes.dart';
import 'package:islami/ui/utils/app_colors.dart';
import 'package:islami/ui/utils/app_style.dart';

class Ahadeth extends StatefulWidget {

   Ahadeth({super.key});

  @override
  State<Ahadeth> createState() => _AhadethState();
}

class _AhadethState extends State<Ahadeth> {
  List<Hadeth> ahadethList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readHadethFile();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 28,
              child: Image.asset(AppAssets.ahadethTabLogo)
          ),
          Expanded(
            flex: 78,
              child: Column(
                children: [
                  Container(width: double.infinity,color: AppColors.primaryColor,height: 3,),
                  Spacer(flex: 1,),
                  Center(child: Text('الأحاديث',style: AppStyle.titlesTextStyle,)),
                  Spacer(flex: 1,),
                  Container(width: double.infinity,color: AppColors.primaryColor,height: 3,),
                  buildAhadethList(),
                ],
              ),
          ),
        ],
    );
  }

  Future readHadethFile() async{
    String ahadethFileContent = await rootBundle.loadString('assets/files/ahadeth/ahadeth.txt');
    List<String> ahadethAsStrings = ahadethFileContent.split('#\r\n');
    for(int i = 0; i < ahadethAsStrings.length; i++)
      {
        String hadeth = ahadethAsStrings[i];
        List<String> ahadethEdited = hadeth.split('\n');
        String hadethName = ahadethEdited[0];
        ahadethEdited.removeAt(0);
        String hadethContent = ahadethEdited.join();
        ahadethList.add(Hadeth(hadethContent, hadethName));
      }
    setState(() {});
  }

  Widget buildAhadethList() => ahadethList.isEmpty? CircularProgressIndicator() :Expanded(
    flex: 70,
    child: ListView.builder(
      itemCount: ahadethList.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: (){
          Navigator.pushNamed(
              context, HadethDetails.routeName,
              arguments: Hadeth(ahadethList[index].content, ahadethList[index].title));
        },
        child: Row(
          children: [
            Expanded(child: Text(ahadethList[index].title,textAlign: TextAlign.center,style: AppStyle.titlesTextStyle,)),
          ],
        ),
      ),
    ),
  );
}
