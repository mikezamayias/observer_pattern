import 'package:flutter/material.dart';

class ObservablePage extends StatelessWidget {
  const ObservablePage({Key key}) : super(key: key);

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Colors.teal,
              child: Text(
                'Subject',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Card(
              color: Colors.lime,
            )
          ],
        ),
      ),
    );
  }
}
