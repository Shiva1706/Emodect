import 'dart:async';

import 'package:camera/camera.dart';
import 'package:emodect/home.dart';
import 'package:flutter/material.dart';

List<CameraDescription>? cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Emodect())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to Emodect"),
      ),
    );
  }
}

class Emodect extends StatefulWidget {
  @override
  _EmodectState createState() => _EmodectState();
}

class _EmodectState extends State<Emodect> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Emodect",
        theme: ThemeData(
            primaryColor: Colors.deepOrange,
            brightness: Brightness.dark,
            accentColor: Colors.pinkAccent),
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}
