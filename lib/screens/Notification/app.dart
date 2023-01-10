import 'package:flutter/material.dart';

//importing local components 
import 'components/AppBarWidget.dart';
import 'components/BodyWidget.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(82.0),
        child: AppBarWidget(),
      ),
      body: BodyWidget(),
    );
  }
}