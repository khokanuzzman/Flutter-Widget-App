import 'package:flutter/material.dart';
class MyList extends StatelessWidget {
  final Widget title;
  final Widget subtext;
  final Widget trailing;
  final Widget leading;
  const MyList({Key? key, required this.title, required this.subtext, required this.trailing, required this.leading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: title,
          subtitle: subtext,
          leading: leading,
          trailing: trailing,
        )
      ],
    );
  }
}
