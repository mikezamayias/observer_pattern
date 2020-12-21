import 'package:flutter/material.dart';

class ColorBool extends ChangeNotifier {
  bool _colorBool = true;
  
  bool get colorBool => _colorBool;
  
  set colorBool(bool state) {
    _colorBool = state;
    notifyListeners();
  }
}
