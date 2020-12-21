import 'package:observer_pattern/logic/observer_interface.dart';

mixin Observable {
  List<Observer> _observers;

  void registerObserver(Observer observer) {
  }

  void removeObserver(Observer obsever) {
  }

  void notifyObservers() {
  }
}
