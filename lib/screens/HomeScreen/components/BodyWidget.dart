import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/bannerWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/crouselWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/menusWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/myBkashWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/offerWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/suggestionWidget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          MenusWidget(),
          MyBkashWidget(),
          CrouselWidgets(),
          OfferWidget(),
          SuggestionWidget(),
          BannerWidget()
        ],
      ),
    );
  }
}
