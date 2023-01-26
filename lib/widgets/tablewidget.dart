import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../utilities/spacingWidget.dart';
import 'card.dart';

class Tablewidget extends StatelessWidget {
  const Tablewidget({Key? key,  required this.titleList, required this.imageList}) : super(key: key);

   final List<String> titleList;
   final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    Container(
      padding: addPadding(5),
      decoration: BoxDecoration(
          border:
              Border.all(color: const Color.fromARGB(255, 238, 233, 233))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Suggestions"),
          GestureDetector(
            onTap: () {
              
            },
            child: const Text(
              "See More",
              style: TextStyle(color: primaryColor),
            ),
          )
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
          border:
              Border.all(color: const Color.fromARGB(255, 240, 233, 233))),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < imageList.length; i++)
                CardWidget(
                  image: imageList[i],
                  title: titleList[i],
                )
            ],
          )),
    )
      ],
    );
  }
}
