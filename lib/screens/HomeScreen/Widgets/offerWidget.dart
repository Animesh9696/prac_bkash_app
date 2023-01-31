import 'package:flutter/material.dart';

import '../../../../utilities/constants.dart';
import '../../../../widgets/tablewidget.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tablewidget(
      topic: "Offer",
      titleList: sampletitleList,
      imageList: sampleimageList,
    );
  }
}
