import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/constants.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(
        children: [Text("App bar"), _Body(), Text("Next =>"), Keybord()],
      ),
    );
  }
}

class Keybord extends StatefulWidget {
  const Keybord({
    super.key,
  });

  @override
  State<Keybord> createState() => _KeybordState();
}

class _KeybordState extends State<Keybord> {
  bool showKeybord = false;
  // @override
  // void setState(VoidCallback fn) {
  //   // TODO: implement setState

  //   Future.delayed(Duration(seconds: 1), () {
  //     setState(() {
  //       showKeybord = true;
  //     });
  //   });
  // }
  // @override
  // void setState(VoidCallback fn) {
  //   // TODO: implement setState
  //   super.setState(fn);
  //   Future.delayed(Duration(seconds: 1), () {
  //     setState(() {
  //       showKeybord = true;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        showKeybord = true;
      });
    });
    return AnimatedSwitcher(
      duration: const Duration(seconds: 5),
      child: showKeybord
          ? SizedBox(
              height: 200,
              child: Text("keybord"),
            )
          : SizedBox(
              height: 0,
            ),
    );
    // if (showKeybord) {
    //   return SizedBox(
    //     height: 200,
    //     child: Text("keybord"),
    //   );
    // } else {
    //   return SizedBox(
    //     height: 0,
    //   );
    // }
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Text("data"),
          Container(
            decoration: BoxDecoration(color: Colors.red),
            child: SizedBox(
              height: 1000,
              width: 100,
              child: Text("cc"),
            ),
          ),
          Text("data"),
        ],
      ),
    ));
  }
}
