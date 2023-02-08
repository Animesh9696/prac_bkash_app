import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/constants.dart';

import '../utilities/spacingWidget.dart';

typedef KeybordKeyCallback = void Function(String key);

class CustomKeyboard extends StatelessWidget {
  final KeybordKeyCallback onKeybordButtonPressed;
  final VoidCallback keyboardArrowForward;
  final VoidCallback clearPassword;
  const CustomKeyboard({
    required this.onKeybordButtonPressed,
    required this.keyboardArrowForward,
    required this.clearPassword,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                KeybordButton(
                    onPress: () => onKeybordButtonPressed("1"), text: "1"),
                KeybordButton(
                    onPress: () => onKeybordButtonPressed("2"), text: "2"),
                KeybordButton(
                    onPress: () => onKeybordButtonPressed("3"), text: "3"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                KeybordButton(
                    onPress: () => onKeybordButtonPressed("4"), text: "4"),
                KeybordButton(
                    onPress: () => onKeybordButtonPressed("5"), text: "5"),
                KeybordButton(
                    onPress: () => onKeybordButtonPressed("6"), text: "6"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                KeybordButton(
                    onPress: () => onKeybordButtonPressed("7"), text: "7"),
                KeybordButton(
                    onPress: () => onKeybordButtonPressed("8"), text: "8"),
                KeybordButton(
                    onPress: () => onKeybordButtonPressed("9"), text: "9"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {
                    clearPassword();
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.cancel,
                    size: 35,
                  ),
                ),
                KeybordButton(
                    onPress: () => onKeybordButtonPressed("0"), text: "0"),
                MaterialButton(
                  onPressed: () {
                    keyboardArrowForward();
                  },
                  color: Colors.pink,
                  textColor: Colors.black,
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KeybordButton extends StatelessWidget {
  final VoidCallback onPress;
  final String text;
  const KeybordButton({
    super.key,
    required this.onPress,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(55.0),
      ))),
      onPressed: onPress,
      child: Text(
        text,
        style: const TextStyle(
            color: secondaryColor, fontWeight: FontWeight.bold, fontSize: 32),
      ),
    );
  }
}
