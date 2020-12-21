import 'package:flutter/material.dart';
import 'package:observer_pattern/widgets/custom_button.dart';

class ButtonsFrame extends StatefulWidget {
  const ButtonsFrame({
    Key key,
    @required this.thisColor,
    @required this.thatColor,
    @required this.hasActiveButtons,
  }) : super(key: key);

  final Color thisColor;
  final Color thatColor;
  final bool hasActiveButtons;

  @override
  _ButtonsFrameState createState() => _ButtonsFrameState();
}

class _ButtonsFrameState extends State<ButtonsFrame> {
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
        mainAxisSpacing: 7,
        crossAxisSpacing: 7,
        childAspectRatio: 1.1,
        children: List.generate(
          100,
          (index) => CustomButton(
            index: '$index',
            thisColor: widget.thisColor,
            thatColor: widget.thatColor,
            isPressable: widget.hasActiveButtons,
          ),
        )..shuffle(),
      ),
    );
  }
}
