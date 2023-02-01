import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/constants.dart';
import 'package:prac_bkash_app/widgets/DrawerWidget.dart';

import 'Widgets/AppBarWidget.dart';
import 'Widgets/BodyWidget.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          endDrawer: const SafeArea(child: DrawerWidget()),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(105.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const AppBarWidget(),
                ),
                Container(
                  color: Colors.white,
                  height: 50,
                  child: TabBar(indicatorColor: primaryColor, tabs: [
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text("Notifications",
                            style: TextStyle(color: Colors.pink)),
                      ),
                    ),
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text("Transactions",
                            style: TextStyle(color: Colors.pink)),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "Notifications",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  child: const Text("Transaction",
                      style: TextStyle(color: Colors.black))),
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

      //   const TabBar(
      //           tabs: [
      //             Tab(icon: Icon(Icons.directions_car)),
      //             Tab(icon: Icon(Icons.directions_transit)),
      //           ],
      //         ),
    );
  }
}
