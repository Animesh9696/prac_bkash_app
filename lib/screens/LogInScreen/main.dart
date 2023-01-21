import 'package:flutter/material.dart';

import 'widgets/AppBarWidget.dart';
import 'widgets/LoginBodyWidget.dart';

class LoginScreeen extends StatefulWidget {
  const LoginScreeen({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<LoginScreeen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(82.0),
        child: LoginAppBarWidget(),
      ),
      body: LoginBodyWidget(),
    ));
  }
}
