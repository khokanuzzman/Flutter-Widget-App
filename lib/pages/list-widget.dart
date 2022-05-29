import 'package:flutter/material.dart';
import 'package:flutter_widgets/common/MyList.dart';
import 'package:flutter_widgets/common/WidgetTitle.dart';

class MyListWidet extends StatelessWidget {
  const MyListWidet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        WidgetTitle(title: "List Tile"),
        MyList(
          title: Text("Easy Explanation"),
          subtext: Text("The subtitle"),
          leading: CircleAvatar(
            child: Icon(Icons.message),
          ),
          trailing: Icon(Icons.camera),
        ),
        MyList(
          title: Text("Easy Explanation"),
          subtext: Text("The subtitle"),
          leading: CircleAvatar(
            child: Icon(Icons.message),
          ),
          trailing: Icon(Icons.camera),
        ),
        MyList(
          title: Text("Easy Explanation"),
          subtext: Text("The subtitle"),
          leading: CircleAvatar(
            child: Icon(Icons.message),
          ),
          trailing: Icon(Icons.camera),
        ),
      ],
    );
  }
}
