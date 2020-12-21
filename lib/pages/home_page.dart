import 'package:flutter/material.dart';
import 'package:observer_pattern/pages/observable_page.dart';
import 'package:observer_pattern/pages/observer_page.dart';

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
      margin: EdgeInsets.all(0),
      color: Colors.grey[200],
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: ObservablePage(),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: ObserverPage(),
            ),
          ],
        ),
      ),
    );
  }
}
