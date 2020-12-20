import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';
import 'package:observer_pattern/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Demonstration of Observer Design Pattern');
    setWindowMinSize(Size.infinite);
    setWindowMaxSize(Size.infinite);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Jura',
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
