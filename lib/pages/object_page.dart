import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:observer_pattern/frames/frame.dart';
import 'package:observer_pattern/widgets/object_text_panel.dart';

class ObjectPage extends StatelessWidget {
  const ObjectPage({
    Key key,
    @required this.objectName,
    @required this.objectColor,
    @required this.otherColor,
  }) : super(key: key);

  final String objectName;
  final Color objectColor;
  final Color otherColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: objectColor,
      elevation: 0,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: ObjectTextPanel(
                objectName: objectName,
                objectColor: objectColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              flex: 10,
              fit: FlexFit.loose,
              child: Frame(
                thisColor: objectColor,
                thatColor: otherColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
