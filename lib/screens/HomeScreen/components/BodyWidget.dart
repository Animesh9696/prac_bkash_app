import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/bannerWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/crouselWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/menusWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/myBkashWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/offerWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/suggestionWidget.dart';
import 'package:prac_bkash_app/utilities/constants.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

import '../../../widgets/card.dart';

class BodyWidget extends StatelessWidget {
  BodyWidget({
    Key? key,
  }) : super(key: key);

  List<String> images = [
    "assets/images/mobile_recharge.jpg",
    "assets/images/mobile_recharge.jpg",
    "assets/images/mobile_recharge.jpg",
    "assets/images/mobile_recharge.jpg",
    "assets/images/mobile_recharge.jpg",
  ];

  List<String> titles = [
    "My Offer",
    "My Offer",
    "My Offer",
    "My Offer",
    "My Offer",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
            margin: addMargin(5),
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromARGB(255, 240, 233, 233))),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: addPadding(5),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 238, 233, 233))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Suggestions"),
                            GestureDetector(
                              onTap: () {
                               
                              },
                              child: const Text("See More",style: TextStyle(color: primaryColor),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 240, 233, 233))),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                for (int i = 0; i < images.length; i++)
                                  CardWidget(
                                    image: images[i],
                                    title: titles[i],
                                  )
                              ],
                            )),
                      )
                    ],
                  ),
                ],
              ),
            )));
  }
}
