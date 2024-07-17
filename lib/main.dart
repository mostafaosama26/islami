import 'package:flutter/material.dart';
import 'package:islami/ui/screens/home/home.dart';
import 'package:islami/ui/screens/splash.dart';
import 'package:islami/ui/utils/app_colors.dart';

void main() {
  runApp(const Islami());
}

class Islami extends StatelessWidget {
  const Islami({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Splash.routeName: (_) => Splash(),
        Home.routeName: (_) => Home(),
      },
      initialRoute: Splash.routeName,
    );
  }
}
