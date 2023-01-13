import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/Home/app.dart';

class AppBarWidget extends StatelessWidget {
const AppBarWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.pink,
      width: double.infinity,
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 15,),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop(
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
            },
            child: Icon(Icons.arrow_back,color: Colors.white),
          ),
          SizedBox(width: 135,),
          Text("My QR",style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}