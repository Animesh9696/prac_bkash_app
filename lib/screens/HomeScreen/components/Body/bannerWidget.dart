import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          color: Colors.white,
          margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
          child: Container(
            width: Size.infinite.width,
            child: Image.asset('assets/images/banner.jpg'),
          )),
    );
  }
}
