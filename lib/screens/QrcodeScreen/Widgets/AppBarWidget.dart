import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/HomeScreen/HomeScreen.dart';
import 'package:prac_bkash_app/utilities/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      width: double.infinity,
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Builder(builder: (context) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 10.0),
                child: Container(
                    width: 50,
                    height: 50,
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
              ),
            );
          }),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(right: 50),
            alignment: Alignment.center,
            child: const Text(
              "Inbox",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ))
        ],
      ),
    );
  }
}
