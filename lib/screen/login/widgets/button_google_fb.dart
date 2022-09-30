
import 'package:flutter/material.dart';

class ButtonGoogleORFB extends StatelessWidget {
  final String title;
  final String image;
  const ButtonGoogleORFB({super.key,required this.title,required this.image});

  @override
  Widget build(BuildContext context) {
    final h  = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(15),
      height: h*0.08,
      width: double.infinity,
      decoration: BoxDecoration(
      border: Border.all(width: 1,color: Colors.grey)),
      child: Row(children: [
        Image.asset(image,height: h*0.3,width: w*0.1,),
        SizedBox(width: w*0.2,),
        Text(title,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
      ]),
    );
  }
}