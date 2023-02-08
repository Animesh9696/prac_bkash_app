import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/constants.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

import '../../../../widgets/MenuWidget.dart';
import '../../../widgets/MenuMoreWidget.dart';

class MoreServices extends StatelessWidget {
  const MoreServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 230, 224, 224))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                    child: const Text(
                      "More Services",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 119, 116, 116)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 230, 224, 224))),
              child: MenuMoreWidget(menuMore: moreservcieSample),
            )
          ],
        ));
  }
}
