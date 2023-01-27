import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

class CrouselWidgets extends StatefulWidget {
  const CrouselWidgets({Key? key}) : super(key: key);

  @override
  _CrouselWidgetsState createState() => _CrouselWidgetsState();
}

class _CrouselWidgetsState extends State<CrouselWidgets> {
  List<String> images = [
    "assets/images/banner.jpg",
    "assets/images/banner.jpg",
  ];

  int currentIndex = 0;
  int _currentPage = 0;
  late Timer _timer;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < images.length) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10,bottom: 10,left: 1,right: 1),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(45)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: PageView.builder(
                pageSnapping: false,
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    images[index % images.length],
                    fit: BoxFit.cover,
                  );
                }),
          ),
          addVerticalSpace(7),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < images.length; i++)
                buildIndicator(currentIndex == i)
            ],
          ),
          addVerticalSpace(5),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(right: 3,left: 3),
      height: isSelected ? 8 : 8,
      width: isSelected ? 8 : 8,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.pink : Colors.grey),
    );
  }
}
