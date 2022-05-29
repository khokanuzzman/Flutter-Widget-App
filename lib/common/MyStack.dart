import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.values.first,
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(20)
          ),
          width: 200,
          height: 200,
        ),
        Positioned(top: 0, child: Icon(Icons.abc_rounded , size: 50,color: Colors.white,)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              child: Icon(Icons.person),
              onPressed: () {},
            ),
            FloatingActionButton(
              child: Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
