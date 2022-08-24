import 'dart:async';

import 'package:flutter/material.dart';
import 'package:la_vie/modules/home/home.dart';
import 'package:la_vie/shared/components/components.dart';
import 'package:la_vie/shared/styles/colors.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(
          seconds:3
      ),
        (){
        navigateAndFinish(context, Home());
        },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Center(
        child: logoLaVie(
            fontSize: 35,
            left: 60,
            top: 25,
            width: 32,
            height: 22,
            fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
