import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "What would you like?",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.notifications_none,
            color: Colors.green,
            size: 24,
          )
        ],
      ),
    );
  }
}
