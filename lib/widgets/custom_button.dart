import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key key,
    @required this.index,
    @required this.thisColor,
    @required this.thatColor,
  }) : super(key: key);

  final String index;
  final Color thisColor;
  final Color thatColor;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _color;

  @override
  void initState() {
    super.initState();
    _color = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            _color = !_color;
          },
        );
      },
      child: Card(
        color: _color ? Colors.white : Colors.grey[800],
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            '${widget.index}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: _color ? Colors.black : widget.thisColor,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
