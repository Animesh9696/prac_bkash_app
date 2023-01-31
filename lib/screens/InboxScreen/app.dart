import 'package:flutter/material.dart';
import 'package:prac_bkash_app/widgets/DrawerWidget.dart';

import 'Widgets/AppBarWidget.dart';
import 'Widgets/BodyWidget.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
      //     child: Scaffold(
      //   backgroundColor: Colors.white,
      //   appBar: PreferredSize(
      //     preferredSize: Size.fromHeight(82.0),
      //     child: AppBarWidget(),
      //   ),
      //   body: BodyWidget(),
      // const TabBar(
      //           tabs: [
      //             Tab(icon: Icon(Icons.directions_car)),
      //             Tab(icon: Icon(Icons.directions_transit)),
      //             Tab(icon: Icon(Icons.directions_bike)),
      //           ],
      //         )
      //   endDrawer: SafeArea(child: DrawerWidget()),
      // )
    );
  }
}
