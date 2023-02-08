import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/constants.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 780,
          margin: addMargin(10),
          color: Colors.white,
          child: Card(
            elevation: 15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/qr_code.png",
                  fit: BoxFit.contain,
                  width: 400,
                ),
                addVerticalSpace(5.0),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Show this QR code to anyone to receive",
                    style: TextStyle(color: primaryColor2,fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "money easily",
                    style: TextStyle(color: primaryColor2,fontSize: 15),
                  ),
                ),
                addVerticalSpace(35.0),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  padding: const EdgeInsets.only(left: 15, right: 15,top: 15,bottom: 15),
                  decoration: BoxDecoration(
                      color: primaryColor2,
                      borderRadius: BorderRadius.circular(35)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.download,
                        color: Colors.white,
                        size: 35,
                      ),
                      addHorizontalSpace(10.0),
                      const Text("Download",style: TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  ),
                ),
                addVerticalSpace(20),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  padding: const EdgeInsets.only(left: 15, right: 15,top: 15,bottom: 15),
                  decoration: BoxDecoration(
                      color: primaryColor2,
                      borderRadius: BorderRadius.circular(35)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 35,
                      ),
                      addHorizontalSpace(10.0),
                      const Text("Share QR code",style: TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
