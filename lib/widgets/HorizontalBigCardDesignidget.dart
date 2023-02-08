import 'package:flutter/material.dart';
import 'package:prac_bkash_app/models/MyBkashModel.dart';
import 'package:prac_bkash_app/widgets/BigCardWidget.dart';

import '../utilities/constants.dart';
import '../utilities/spacingWidget.dart';
import 'CardWidget.dart';

class HorizontalBigCardDesignidget extends StatelessWidget {
  const HorizontalBigCardDesignidget(
      {Key? key, required this.topic, required this.modelList})
      : super(key: key);

  final String topic;
  final List<dynamic> modelList;

  @override
  Widget build(BuildContext context) {
    const data = "See All";
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Column(
        children: [
          Container(
            padding: addPadding(5),
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 238, 233, 233))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  topic,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 119, 116, 116)),
                ),
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
                                      Text(
                                        topic,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: secondaryTextColor),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Close",
                                          style:
                                              TextStyle(color: primaryColor2),
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
                                        itemCount: modelList.length,
                                        itemBuilder: (context, int index) {
                                          return CardWidget(
                                              title: modelList[index].title1,
                                              image:
                                                  modelList[index].image_url);
                                        }))
                              ],
                            ),
                          );
                        });
                  },
                  child: const Text(
                    data,
                    style: TextStyle(color: primaryColor2),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 240, 233, 233))),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      BigCardWidget(
                        image: modelList[i].image_url,
                        title1: modelList[i].title1,
                        title2: modelList[i].title2,
                      )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
