import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/constants.dart';

import '../../../../widgets/tablewidget.dart';

class MyBkashWidget extends StatelessWidget {
  MyBkashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tablewidget(
      topic: "Mybkash",
      titleList: sampletitleList,
      imageList: sampleimageList,
    );
  }
}
