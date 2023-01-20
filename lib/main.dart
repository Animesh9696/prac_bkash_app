import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/AnimatedSplashScreeen/main.dart';
import 'package:prac_bkash_app/utilities/constants.dart';

import 'screens/Home/app.dart';

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
      home: AnimatedSplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}