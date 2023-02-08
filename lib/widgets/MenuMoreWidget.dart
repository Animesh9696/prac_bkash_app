import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/constants.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

import '../../../../widgets/MenuWidget.dart';

class MenuMoreWidget extends StatelessWidget {
  final List<dynamic> menuMore;

  const MenuMoreWidget({
    required this.menuMore,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GridView.count(
        crossAxisCount: 4,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        children: List.generate(menuMore.length, (index) {
          return MenuWidget(
              title: menuMore[index].title,
              image: menuMore[index].image_url);
        }),
      ),
    );
  }
}