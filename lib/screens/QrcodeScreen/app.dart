import 'package:flutter/material.dart';

//importing local components
import 'components/AppBarWidget.dart';
import 'components/BodyWidget.dart';

class QrCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
