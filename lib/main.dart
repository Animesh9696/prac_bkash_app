import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/test.dart';
import 'package:prac_bkash_app/utilities/constants.dart';

import 'screens/HomeScreen/HomeScreen.dart';
import 'screens/SplashScreen/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bKash UI',
      theme: ThemeData(
        primarySwatch: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SpalshScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}