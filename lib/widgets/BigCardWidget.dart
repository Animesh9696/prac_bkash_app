import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

class BigCardWidget extends StatelessWidget {
  const BigCardWidget({
    Key? key,
    required this.title1,required this.title2,
    required this.image,
  }) : super(key: key);
  final String title1;
  final String title2;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: Colors.white,
      child: Card(
        margin: addMargin(5),
        child: Column(
          children: [
            SizedBox(height: 80, child: Image.asset(image)),
            addVerticalSpace(5.0),
            Text(title1,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 19, 18, 18)),
                overflow: TextOverflow.ellipsis),
            addVerticalSpace(5.0),
            Text(title2,
                style: const TextStyle(
                  color: Colors.black45,
                ),
                overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }
}
