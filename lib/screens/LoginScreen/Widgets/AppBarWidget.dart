import 'package:flutter/material.dart';

import 'package:prac_bkash_app/utilities/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
              visible: true,
              child: Builder(builder: (context) {
                return GestureDetector(
                  onTap: () {},
                  child: const SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.pink,
                      )),
                );
              })),
          Container(
            margin: const EdgeInsets.only(right: 30, top: 10, bottom: 10),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.pink, width: 1.0),
                borderRadius: BorderRadius.circular(15)),
            alignment: Alignment.center,
            child: const Text(
              "English",
              style: TextStyle(color: primaryColor, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
