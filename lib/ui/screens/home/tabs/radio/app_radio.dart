import 'package:flutter/material.dart';
import 'package:islami/ui/utils/app_style.dart';

class AppRadio extends StatelessWidget {
   AppRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 1,),
        Image.asset('assets/radio_image.png'),
        Text('SOON',style: AppStyle.appBarStyle,),
        Spacer(flex: 1,),
      ],
    );

  }
}
