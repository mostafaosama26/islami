import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:islami/ui/utils/app_colors.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int index = 0;
  List<String> azkar = ['سبحان الله','الحمدلله','الله اكبر'];
  double _angle = 0;
  int counter = 0;
  void onClick() {
    setState(() {
      _angle += 10.9;
      if(counter != 32)
      {
        counter++;
      }
      else
      {
        counter = 0;
        index != 2 ? index++ : index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Spacer(flex: 1,),
        Container(
          child: Stack(
            children: [
              GestureDetector(
                onTap: onClick,
                child: Container(
                  margin: EdgeInsets.only(top: 74,),
                  child: Transform.rotate(
                      angle: _angle * math.pi / 180,
                      child: Center(child: Image.asset('assets/body_sebha_logo.png'))),
                ),
              ),
              Container(margin: EdgeInsets.only(left: 40),child: Center(child: Image.asset('assets/head_sebha_logo.png'))),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('عدد التسبيحات',style: TextStyle(fontSize: 32,),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: (MediaQuery.of(context).size.width * 25/100 ),
              decoration: BoxDecoration(
                color: Color(0xffbacB7935F),
              ),
              child:  Padding(
                padding: const EdgeInsets.all(32.0),
                child: Center(child: Text('$counter',style: TextStyle(fontSize: 32),)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: (MediaQuery.of(context).size.width * 50/100 ),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child:  Padding(
                padding: const EdgeInsets.all(24.0),
                child: Center(child: Text('${azkar[index]}',style: TextStyle(fontSize: 32),)),
              ),
            ),
          ),
        ),
        Spacer(flex: 1,),
      ],
    );
  }
}
