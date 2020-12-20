import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key key,
    @required this.index,
  }) : super(key: key);

  final String index;

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
        color: _color ? Colors.white : Colors.pink[300],
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            '${widget.index}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: _color ? Colors.black : Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
