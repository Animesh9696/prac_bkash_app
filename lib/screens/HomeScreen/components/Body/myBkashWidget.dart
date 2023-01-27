import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/constants.dart';

import '../../../../widgets/card.dart';
import '../../../../widgets/tablewidget.dart';

class MyBkashWidget extends StatelessWidget {
  MyBkashWidget({Key? key}) : super(key: key);

  List<String> titleList = [
    "Canada",
    "Brazil",
    "USA",
    "Japan",
    "China",
    "UK",
    "Uganda",
    "Uruguay"
  ];

  List<String> imageList = [
    sampleImage,
    sampleImage,
    sampleImage,
    sampleImage,
    sampleImage,
    sampleImage,
    sampleImage,
    sampleImage,
  ];

  @override
  Widget build(BuildContext context) {
    return Tablewidget(
      titleList: titleList,
      imageList: imageList,
    );
  }
}
