
import 'package:flutter/material.dart';


class RoundContainer extends StatelessWidget {
  const RoundContainer({super.key});

  @override
  Widget build(BuildContext context) {
     final h  = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Column(children: [
    const CircleAvatar(
      radius: 30,
      child: Icon(Icons.add),),
    const Text("data")
    ],);
  }
}