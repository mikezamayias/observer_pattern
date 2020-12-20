import 'package:flutter/material.dart';
import 'package:observer_pattern/widgets/custom_button.dart';

class Frame extends StatelessWidget {
  const Frame({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: GridView.count(
        crossAxisCount: 10,
        scrollDirection: Axis.vertical,
        children: List.generate(
          100,
          (index) => CustomButton(index: '$index'),
        ),
      ),
    );
  }
}
