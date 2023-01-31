import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/constants.dart';

class Keyboard extends StatefulWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  _KeyboardState createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  double hight = 60;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: const Text("1",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: const Text("2",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: const Text("3",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: const Text("4",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: const Text("5",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: const Text("6",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: const Text("7",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: const Text("8",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: const Text("9",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: const Text("X",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: const Text("0",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: const Text("Go",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
