import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final double elevation;
  final Color shadowColor;
  final Color boxShadowColor;
  final double radius;
  final double height;

  const CustomCard({
    Key? key,
    required this.child,
    required this.padding,
    required this.elevation,
    required this.shadowColor,
    required this.radius,
    required this.height, required this.boxShadowColor,
  }) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
            shadowColor: widget.shadowColor,
            elevation: widget.elevation,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(widget.radius)),
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: widget.boxShadowColor,
                      offset: Offset(5,8),
                      blurRadius: 10
                    )
                  ]),
              width: double.infinity,
              height: widget.height,
              child: Center(child: widget.child),
            ))
      ],
    );
  }
}
