import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipeScreen extends StatelessWidget {
  LiquidSwipeScreen({Key? key}) : super(key: key);

  final liquid_pages=[
    Container(color: Colors.pink,),
    Container(color: Colors.yellow,),
    Container(color: Colors.green,),
    Container(color: Colors.teal,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(pages: liquid_pages),
    );
  }
}
