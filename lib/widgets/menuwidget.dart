import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          addVerticalSpace(5.0),
          Container(
              alignment: Alignment.center,
              child:
                  Text(title, style: const TextStyle(color: Colors.black45))),
        ],
      ),
    );
  }
}
