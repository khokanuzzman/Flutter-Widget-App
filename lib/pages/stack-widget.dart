import 'package:flutter/material.dart';
import 'package:flutter_widgets/common/MyStack.dart';
import 'package:flutter_widgets/common/WidgetTitle.dart';

class MyStackWidget extends StatelessWidget {
  const MyStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WidgetTitle(title: "Stack"),
        MyStack()
      ],
    );
  }
}
