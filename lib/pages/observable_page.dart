import 'package:flutter/material.dart';
import 'package:observer_pattern/logic/observable_interface.dart';
import 'package:observer_pattern/pages/object_page.dart';

class ObservablePage extends StatefulWidget implements Observable{
  const ObservablePage({Key key}) : super(key: key);

  @override
  _ObservablePageState createState() => _ObservablePageState();

  @override
  notifyObserver() {
    // TODO: implement notifyObserver
    // throw UnimplementedError();
  }

  @override
  registerObserver() {
    // TODO: implement registerObserver
    // throw UnimplementedError();
  }

  @override
  removeObserver() {
    // TODO: implement removeObserver
    // throw UnimplementedError();
  }
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
