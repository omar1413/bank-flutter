import 'package:flutter/material.dart';

class LabelWithTitle extends StatelessWidget {
  final String title;
  final String label;

  LabelWithTitle({this.title, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.all(3.0),
          width: double.infinity,
          height: 50.0,
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Center(
            child: Text(
              label,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
