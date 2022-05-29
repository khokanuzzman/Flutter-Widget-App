import 'package:flutter/material.dart';
import 'package:flutter_widgets/common/WidgetTitle.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WidgetTitle(title: "Images"),
        Container(
          child: Image.asset('images/khokan.jpeg'),
        )
      ],
    );
  }
}
