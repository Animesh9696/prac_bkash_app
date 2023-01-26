import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../utilities/spacingWidget.dart';
import 'card.dart';

class Tablewidget extends StatefulWidget {
  const Tablewidget({ Key? key }) : super(key: key);

  @override
  _TablewidgetState createState() => _TablewidgetState();
}

class _TablewidgetState extends State<Tablewidget> {



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
    return Column(
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
                  );
  }
}