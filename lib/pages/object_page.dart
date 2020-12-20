import 'package:flutter/material.dart';
import 'package:observer_pattern/frames/frame.dart';

class ObjectPage extends StatelessWidget {
  const ObjectPage({Key key, this.objectName}) : super(key: key);

  final String objectName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Colors.amber,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.grey[300],
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
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Frame(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
