import 'package:flutter/material.dart';
import 'components/AppBarWidget.dart';
import 'components/BodyWidget.dart';
import '../Home/widgets/DrawerWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(82.0),
        child: AppBarWidget()
      ),
      body: BodyWidget(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
          endDrawer: DrawerWidget(),
    );
  }
}
