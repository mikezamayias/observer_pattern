import 'package:flutter/material.dart';

class ObjectTextPanel extends StatelessWidget {
  const ObjectTextPanel({
    Key key,
    @required this.objectName,
    @required this.objectColor,
  }) : super(key: key);

  final String objectName;
  final Color objectColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[800],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.all(14.0),
          child: Text(
            objectName,
            style: TextStyle(
              color: objectColor,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
