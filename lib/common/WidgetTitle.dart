import 'package:flutter/material.dart';

class WidgetTitle extends StatelessWidget {
  final title;

  const WidgetTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Colors.amberAccent,
              offset: Offset(
                5.0,
                5.0,
              ),
              blurRadius: 2)
        ],
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 50,
          color: Colors.black,
        ),
      ),
    );
  }
}
