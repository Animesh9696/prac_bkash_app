import 'dart:async';

import 'package:flutter/material.dart';

class CrouselWidgets extends StatefulWidget {
  const CrouselWidgets({Key? key}) : super(key: key);

  @override
  _CrouselWidgetsState createState() => _CrouselWidgetsState();
}

class _CrouselWidgetsState extends State<CrouselWidgets> {
  List<String> images = [
    "assets/images/banner.jpg",
    "assets/images/banner.jpg",
    "assets/images/banner.jpg",
    "assets/images/banner.jpg"
  ];

  int currentIndex = 0;

  int _currentPage = 0;
  late Timer _timer;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
void initState() {
  super.initState();
  _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
    if (_currentPage < images.length) {
      _currentPage++;
    } else {
      _currentPage = 0;
    }

    _pageController.animateToPage(
      _currentPage,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  });
}

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13),
                    child: SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Image.asset(
                        images[index % images.length],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < images.length; i++)
                buildIndicator(currentIndex == i)
            ],
          )
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Container(
      height: isSelected ? 12 : 8,
      width: isSelected ? 12 : 8,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: isSelected ? Colors.red : Colors.grey),
    );
  }
}
