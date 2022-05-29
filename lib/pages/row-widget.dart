import 'package:flutter/material.dart';
import 'package:flutter_widgets/common/WidgetTitle.dart';

class MyRow extends StatelessWidget {
  const MyRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
      ),
      backgroundColor: Colors.white,
      body: Container(
          child: Column(
        children: [
          WidgetTitle(title: "Row",),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Colors.teal,
                  width: width / 3,
                  height: height / 5,
                ),
                Container(
                  color: Colors.yellow,
                  width: width / 3,
                  height: height / 5,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                ),
                Container(
                  color: Colors.cyan,
                  width: width / 3,
                  height: height / 5,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                ),
                Container(
                  color: Colors.yellowAccent,
                  width: width / 3,
                  height: height / 5,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            height: 50,
          ),Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.green,
            width: double.infinity,
            height: 50,
          ),Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.red,
            width: double.infinity,
            height: 50,
          ),Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.teal,
            width: double.infinity,
            height: 50,
          ),
        ],
      )),
    );
  }
}
