import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hackaton/about.dart';
import 'package:hackaton/home.dart';
import 'package:hackaton/login.dart';
import 'package:hackaton/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
    );
  }
}

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => login())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Image(
          image: AssetImage("images/logo.jfif"),
          height: 400,
          width: 400,
        ));
  }
}
