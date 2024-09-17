import 'package:flutter/material.dart';
import 'package:lister/ui/intropage.dart';
import 'package:lister/ui/match_info.dart';
import 'package:lister/ui/tes.dart';
import 'ui/home.dart';
import 'model/player_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: IntroPage(),
      debugShowCheckedModeBanner: false,

      routes: {
        '/test' : (context)=>const TesScreen(),
      },
    );
    // return SportsApp();
  }
}
