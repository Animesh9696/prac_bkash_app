import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 100,
      
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 64, child: Image.asset(image)),
          addVerticalSpace(5.0),
          Text(title,
              style: const TextStyle(color: Colors.black45),
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
