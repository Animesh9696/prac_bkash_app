import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/constants.dart';
import '../LoginScreen/LoginScreen.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SpalshScreenState createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        alignment: Alignment.center,
        child: SizedBox(
            height: 500, width: 500, child: Image.asset(sampleImagepng)),
      ),
    );
  }
}
