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
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 4 - 6,
      height: 93,
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(image),
          addVerticalSpace(5.0),
          Text(title,
              style: TextStyle(color: Colors.black45)),
        ],
      ),
    );
  }
}