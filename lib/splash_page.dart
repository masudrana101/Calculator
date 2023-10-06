import 'dart:async';

import 'package:calculator/homePage.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
     Navigator.pushReplacement(
         context,
         MaterialPageRoute(
             builder: (context) => HomePage(),)
     );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: Image.asset("assets/cal.png", width: size.width/2)),
        ),
      );

  }
}
