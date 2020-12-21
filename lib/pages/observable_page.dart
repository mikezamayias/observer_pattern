import 'package:flutter/material.dart';
import 'package:observer_pattern/pages/object_page.dart';

class ObservablePage extends StatefulWidget{
  const ObservablePage({Key key}) : super(key: key);

  @override
  _ObservablePageState createState() => _ObservablePageState();

}

class _ObservablePageState extends State<ObservablePage> {
  @override
  Widget build(BuildContext context) {
    return ObjectPage(
      objectName: 'Observable',
      objectColor: Colors.purple[200],
      otherColor: Colors.amber[400],
    );
  }
}
