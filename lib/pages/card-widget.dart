import 'package:flutter/material.dart';
import 'package:flutter_widgets/common/WidgetTitle.dart';
import 'package:flutter_widgets/common/custom_card.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        WidgetTitle(title: "Card"),
        CustomCard(
        radius: 20,
        height: height / 6,
        shadowColor: Colors.black12,
        elevation: 5,
        boxShadowColor: Colors.teal,
        padding: EdgeInsets.all(10),
        child: Text("this is child"),
      ),
        CustomCard(
          radius: 20,
          height: height / 6,
          boxShadowColor: Colors.yellow,
          shadowColor: Colors.yellow,
          elevation: 5,
          padding: EdgeInsets.all(10),
          child: Text("this is child 2"),
        ),]
    );
  }
}
