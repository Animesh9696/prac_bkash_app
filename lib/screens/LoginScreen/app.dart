import 'package:flutter/material.dart';

//importing local components
import 'Widgets/AppBarWidget.dart';
import 'Widgets/BodyWidget.dart';

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
