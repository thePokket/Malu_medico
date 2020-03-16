import 'package:flutter/material.dart';

import 'Activities/SplashScreen.dart';

void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff1B9CC6),
        primaryColorDark: Colors.white,
        accentColor: Color(0xff016699),
      ),
      title: "Malu Pharmacy",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
