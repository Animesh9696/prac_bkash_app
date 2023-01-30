import 'package:flutter/material.dart';

//importing local components
import 'components/AppBarWidget.dart';
import 'components/BodyWidget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: BodyWidget(),
    ));
  }
}
