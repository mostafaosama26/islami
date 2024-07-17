import 'package:flutter/material.dart';
import 'package:islami/ui/screens/home.dart';
import 'package:islami/ui/utils/app_assets.dart';

class Splash extends StatefulWidget {
  static const String routeName = 'splash';
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Image.asset(AppAssets.splash),
    );
  }
}
