import 'package:flutter/material.dart';


class BannerWidget extends StatelessWidget {

  final String imageUrl;

  const BannerWidget({
    Key? key,
    required this.imageUrl
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: SizedBox(
        width: double.infinity,
        child: Image.asset(imageUrl),
      ),
    );
  }
}
