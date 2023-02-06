import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../utilities/spacingWidget.dart';
import 'CardWidget.dart';

class Tablewidget extends StatelessWidget {
  const Tablewidget(
      {Key? key,
      required this.titleList,
      required this.topic,
      required this.imageList})
      : super(key: key);

  final List<String> titleList;
  final List<String> imageList;
  final String topic;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5,bottom: 5),
      child: Column(
        children: [
          Container(
            padding: addPadding(5),
            decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 238, 233, 233))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(topic),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        useRootNavigator: true,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(15.0),
                          ),
                        ),
                        context: context,
                        builder: (contex) {
                          return SizedBox(
                            height: 350,
                            child: Column(
                              children: [
                                Container(
                                  padding: addPadding(10),
                                  margin:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(topic),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Close",
                                          style: TextStyle(color: primaryColor),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                    child: GridView.builder(
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                        ),
                                        itemCount: titleList.length,
                                        itemBuilder: (context, int index) {
                                          return CardWidget(
                                              title: titleList[index],
                                              image: imageList[index]);
                                        }))
                              ],
                            ),
                          );
                        });
                  },
                  child: const Text(
                    "See More",
                    style: TextStyle(color: primaryColor),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 240, 233, 233))),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      CardWidget(
                        image: imageList[i],
                        title: titleList[i],
                      )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
