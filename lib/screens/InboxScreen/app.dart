import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/DrawerWidget.dart';

import '../InboxScreen/components/AppBarWidget.dart';
import '../InboxScreen/components/BodyWidget.dart';

class InboxScreen extends StatelessWidget {
const InboxScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(82.0),
        child: AppBarWidget(),
      ),
      body: BodyWidget(),
      endDrawer: DrawerWidget(),
    ));
  }
}