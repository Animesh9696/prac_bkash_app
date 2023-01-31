import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/HomeScreen/HomeScreen.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      width: double.infinity,
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 50),
                alignment: Alignment.center,
            child: const Text(
              "Inbox",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          )),
          Builder(builder: (context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 10.0),
                child: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset('assets/images/fly.png')),
              ),
            );
          })
        ],
      ),
    );
  }
}
