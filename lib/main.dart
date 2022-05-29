import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/card-widget.dart';
import 'package:flutter_widgets/pages/image-widget.dart';
import 'package:flutter_widgets/pages/liquid-swipe.dart';
import 'package:flutter_widgets/pages/list-widget.dart';
import 'package:flutter_widgets/pages/row-widget.dart';
import 'package:flutter_widgets/pages/stack-widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Widget App'),
          ),
          body: HomePage()),
    );
  }
}

class RailItem {
  final String label;
  final IconData icon;
  final IconData selectedIcon;

  RailItem(this.label, this.icon, this.selectedIcon);
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final _pages = [
    MyRow(),
    MyListWidet(),
    MyStackWidget(),
    MyCard(),
    ImageWidget(),
    LiquidSwipeScreen(),
  ];

  final railItems = [
    RailItem('Row', Icons.favorite_border, Icons.favorite),
    RailItem('ListTile',Icons.bookmark_border, Icons.book),
    RailItem('Stack', Icons.stacked_bar_chart_outlined, Icons.stacked_bar_chart),
    RailItem('Card', Icons.square_outlined, Icons.square),
    RailItem('Images', Icons.image_outlined, Icons.image),
    RailItem('Liquid Swipe', Icons.medication_liquid, Icons.medication_liquid_sharp),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          labelType: NavigationRailLabelType.selected,
          destinations: List.generate(railItems.length, (index) {
              var railItem = railItems[index];
              return NavigationRailDestination(
                label: Text(railItem.label),
                icon: Icon(railItem.icon),
                selectedIcon: Icon(railItem.selectedIcon),
              );
            },
          ),
        ),
        const VerticalDivider(thickness: 1, width: 1),
        // This is the main content.
        Expanded(
          child: Center(
            child: _pages[_selectedIndex],
          ),
        )
      ],
    );
  }
}
