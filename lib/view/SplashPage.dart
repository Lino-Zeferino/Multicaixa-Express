import 'dart:async';

import 'package:aula01/data/utlil%20value/standard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'authentication_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  route() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (contex, amimation, secand) {
          return AuthenticationPage();
        },
        transitionDuration: const Duration(seconds: 2),
      ),
    );
  }

  startTimer() {
    var durection = const Duration(seconds: 2);
    Timer(durection, route);
  }

  @override
  initState() {
    super.initState();
    startTimer();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: double.infinity,
          color: Standard().myColor,
          child: const Center(
            child: Image(
              image: AssetImage("assets/images/EXPRESS.png"),
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
