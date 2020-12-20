import 'package:flutter/material.dart';
import 'package:observer_pattern/pages/object_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo[200],
      child: Row(
        children: [
          ObjectPage(
            objectName: 'Observable',
          ),
          ObjectPage(
            objectName: 'Observer',
          ),
        ],
      ),
    );
  }
}
