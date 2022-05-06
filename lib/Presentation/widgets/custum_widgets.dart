import 'package:flutter/material.dart';
import 'package:netflix_clone/const.dart';

class AppbarWidget extends StatelessWidget {
   AppbarWidget({ Key? key ,required this.title}) : super(key: key);
     final String title;

  @override
  Widget build(BuildContext context) {
 
    return Row(
      children: [
        cwidth,
        Text(title,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
        Spacer(),
        Icon(Icons.cast,color: Colors.white),
      cwidth,
        Container(
          height: 24,
          width: 28,
          color: Colors.blue,
        ),
        cwidth
      ],
    );
  }
}
