import 'dart:async';

import 'package:chat/modules/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Chat()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.network(
              "https://freepngimg.com/thumb/whatsapp/76995-whatsapp-message-android-internet-free-clipart-hq-thumb.png"),
        ),
      ),
    );
  }
}
