import 'package:flutter/material.dart';

//importing local components
import 'components/AppBarWidget.dart';
import 'components/BodyWidget.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(82.0),
        child: AppBarWidget(),
      ),
      body: BodyWidget(),
    ));
  }
}
