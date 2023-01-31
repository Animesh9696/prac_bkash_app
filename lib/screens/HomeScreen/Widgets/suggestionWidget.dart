import 'package:flutter/material.dart';

import '../../../../utilities/constants.dart';
import '../../../../widgets/tablewidget.dart';

class SuggestionWidget extends StatelessWidget {
  const SuggestionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tablewidget(
      topic: "Suggestion",
      titleList: sampletitleList,
      imageList: sampleimageList,
    );
  }
}
