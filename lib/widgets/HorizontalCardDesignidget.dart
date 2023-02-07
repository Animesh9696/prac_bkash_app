import 'package:flutter/material.dart';
import 'package:prac_bkash_app/models/MyBkashModel.dart';

import '../utilities/constants.dart';
import '../utilities/spacingWidget.dart';
import 'CardWidget.dart';

class HorizontalCardDesignidget extends StatelessWidget {
  const HorizontalCardDesignidget(
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
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
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
                                        itemCount: modelList.length,
                                        itemBuilder: (context, int index) {
                                          return CardWidget(
                                              title: modelList[index].title,
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
                    style: TextStyle(color: primaryColor),
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
                      CardWidget(
                        image: modelList[i].image_url,
                        title: modelList[i].title,
                      )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
