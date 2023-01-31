import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: SizedBox(
        width: double.infinity,
        child: Image.asset('assets/images/banner.jpg'),
      ),
    );
  }
}
